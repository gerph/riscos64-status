#!/bin/bash
##
# Test that the binaries are working properly.
#

set -e
set -o pipefail

scriptdir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd -P)"
rootdir="$(cd "$scriptdir/.." && pwd -P)"

source "${scriptdir}/progress.sh"
source "${scriptdir}/junitxml.sh"
junitxml_tempdir ""

# The binary names to match (or empty for all)
match_name=

while [[ $# -gt 1 && "${1:0:1}" == '-' ]] ; do
    if [[ "$1" == "--match" ]] ; then
        match_name=$2
        shift
        shift
    else
        echo "Unknown switch '$1'" >&2
        exit 1
    fi
done

dir=${1:-aif64}

if [[ "$dir" == '-h' || "$dir" == '--help' ]] ; then
    echo "Run tests for the RISC OS binaries."
    echo "Syntax: run-tests.sh [--match <name>] <directory>"
    exit 0
fi

if [[ -x './riscos-build-online' ]] ; then
    build_tool="./riscos-build-online"
elif type -p riscos-build-online > /dev/null 2>/dev/null ; then
    build_tool=$(type -p riscos-build-online)
else
    echo "The 'riscos-build-online' tool is required to run these tests"
    exit 1
fi

if [[ "$dir" =~ ^(.*)32$ ]] ; then
    arch=aarch32
    bintype=${BASH_REMATCH[1]}
elif [[ "$dir" =~ ^(.*)64$ ]] ; then
    arch=aarch64
    bintype=${BASH_REMATCH[1]}
else
    error "Unrecognised binary type directory '$dir'"
fi

if [[ "$bintype" == "aif" ]] ; then
    typename=absolutes
elif [[ "$bintype" == "rm" ]] ; then
    typename=modules
fi


JUNITXML_DIR=${JUNITXML_DIR:-${scriptdir}}
JUNITXML_SUITE=${JUNITXML_SUITE:-${typename} (${arch})}
JUNITXML_NAME=${JUNITXML_NAME:-Test-$typename-$arch.xml}

echo "Testing $arch binaries of type $bintype"
echo "************************************"

# JUnit XML file to output.
XML="${JUNITXML_DIR}/${JUNITXML_NAME}";
mkdir -p "${JUNITXML_DIR}"

junitxml_testsuite "${JUNITXML_SUITE}"
junitxml_ci_properties


# Are we done
all_done=false
in_test=false

# Counts (could just use the JUnitXML lib ones)
pass=0
fail=0


function cleanup() {
    local rc=$?
    if $in_test ; then
        result "fail"
    fi
    if ! $all_done ; then
        finish
    fi

    return $rc
}

trap cleanup EXIT


##
# Finish all our processing and exit if error.
function finish() {
    all_done=true
    junitxml_report "$XML"
    junitxml_cleanup

    # Report the results
    if [[ -x "${scriptdir}/junitxml.py" ]] ; then
        "${scriptdir}/junitxml.py" --show --summarise "$XML" || true
    fi

    if [[ "$junitxml_nfail" != 0 ]] ; then
        error "$junitxml_nfail tests failed ($junitxml_npass passed)"
    else
        step "$junitxml_nfail tests failed ($junitxml_npass passed)"
    fi
}


##
# Report the start of the test's run
function start() {
    local name="$1"
    step "Test: ${name}"
    junitxml_start "$name"
    in_test=true
}


##
# Report the result of the test's run
function result() {
    local result="$1"
    local reason="$2"
    in_test=false
    if [[ "$result" = 'pass' ]] ; then
        success "Passed"
        junitxml_result "pass"
    elif [[ "$result" = 'skip' ]] ; then
        notice "Skipped"
        junitxml_result "skip" "" "$reason"
    else
        notice "FAIL"
        junitxml_result "fail" "" "$reason"
    fi
}



for file in $(find "$dir" -type f | sort) ; do
    leaf=$(basename "$file")
    rotype=unk
    if [[ "$file" =~ ^.*/([^/]*),(...)$ ]] ; then
        roname=${BASH_REMATCH[1]}
        rotype=${BASH_REMATCH[2]}
    else
        # Not a file with RISC OS extensions, so skipping
        continue
    fi

    if [[ "$match_name" != '' && ! $leaf =~ $match_name ]] ; then
        # Not one requested; skipping
        continue
    fi

    params_prefix="tests/$leaf"

    echo
    start "$roname"
    if [[ -f "${params_prefix}.disabled" ]] ; then
        reason=$(cat "${params_prefix}.disabled")
        echo "  Skipped${reason:+ ($reason)}"
        result "skip" "$reason"
        continue
    fi
    if [[ "$rotype" == 'ff8' || "$rotype" == 'ffc' ]] ; then
        cmd="/$roname"
        args=()
        if [[ -f "${params_prefix}.args" ]] ; then
            while read -r line ; do
                args+=("$line")
            done < "${params_prefix}.args"
            if [[ "${#args}" == 0 ]] ; then
                echo "File '${params_prefix}.args' was not read properly; does it end with a newline?" >&2
                exit 1
            fi
        else
            args=("")
        fi
    elif [[ "$rotype" == 'ffa' ]] ; then
        cmd="RMLoad $roname"
        modname="$roname"
        if [[ -f "${params_prefix}.name" ]] ; then
            modname="$(cat ${params_prefix}.name)"
        fi
    else
        result "fail" "Do not know how to run this"
        fail=$((fail + 1))
        continue
    fi

    extra_files=()
    if [[ -f "${params_prefix}.files" ]] ; then
        while read -r line ; do
            extra_files+=("$dir/$line")
        done < "${params_prefix}.files"
    fi

    # Header
    cat > .robuild.yaml <<EOM
%YAML 1.0
---

# Defines a list of jobs which will be performed.
# Only 1 job will currently be executed.
jobs:
  build:
    # Env defines system variables which will be used within the environment.
    # Multiple variables may be assigned.
    env:
      "Sys\$Environment": ROBuild

    # Directory to change to before running script
    dir: ${dir}

    # Commands which should be executed to perform the build.
    # The build will terminate if any command returns a non-0 return code or an error.
    script:
EOM

    # Pre-load commands
    if [[ -f "${params_prefix}.pre" ]] ; then
        echo "      - echo *** Pre-commands $roname" >> .robuild.yaml
        while read -r line ; do
            echo "      - echo ***   $line" >> .robuild.yaml
            echo "      - $line" >> .robuild.yaml
        done < "${params_prefix}.pre"
    fi

    # Primary commands
    echo "      - PyromaniacDebug traceblock" >> .robuild.yaml
    if [[ "$rotype" == 'ff8' || "$rotype" == 'ffc' ]] ; then
        echo "      - echo *** Running $roname" >> .robuild.yaml
        for arg in "${args[@]}" ; do
            echo "      - echo ***   $cmd $arg" >> .robuild.yaml
            echo "      - $cmd $arg" >> .robuild.yaml
        done
    elif [[ "$rotype" == "ffa" ]] ; then
            cat >> .robuild.yaml <<EOM
      - echo *** Loading $roname
      - echo ***   $cmd
      - $cmd
EOM
    fi

    # Post commands
    if [[ -f "${params_prefix}.post" ]] ; then
        echo "      - echo *** Post-commands $roname" >> .robuild.yaml
        while read -r line ; do
            echo "      - echo ***   $line" >> .robuild.yaml
            echo "      - $line" >> .robuild.yaml
        done < "${params_prefix}.post"
    fi

    # Finalisation commands
    if [[ "$rotype" == "ffa" ]] ; then
        if [[ ! -f "${params_prefix}.nokill" ]] ; then
            cat >> .robuild.yaml <<EOM
      - echo *** Killing $modname
      - RMKill $modname
EOM
        fi
    fi
    cat >> .robuild.yaml <<EOM
      - echo *** Done
EOM

    zip -q9r /tmp/testrun.zip "$file" "${extra_files[@]}" .robuild.yaml
    if "$build_tool" -A "$arch" -t 30 -i /tmp/testrun.zip \
            | junitxml_output \
            | sed "s/^/  /" ; then
        rc=0
    else
        rc=$?
    fi

    if [[ -f "${params_prefix}.rc" ]] ; then
        expectrc=$(cat "${params_prefix}.rc")
    else
        expectrc=0
    fi

    if [[ "$rc" != "$expectrc" ]] ; then
        result "fail" "" "Expected RC $expectrc"
        fail=$((fail + 1))
    else
        result "pass"
        pass=$((pass + 1))
    fi

    # DEBUG: Only run a single test
    #break
done

# We no longer need the robuild file
rm -f .robuild.yaml

echo
notice "Tests complete"
echo "Pass : $pass"
echo "Fail : $fail"

finish

if [[ "$fail" != 0 ]] ; then
    exit 1
else
    exit 0
fi
