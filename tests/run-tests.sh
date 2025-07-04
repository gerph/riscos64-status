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

dir=${1:-aif64}

if [[ "$dir" == '-h' || "$dir" == '--help' ]] ; then
    echo "Run tests for the RISC OS binaries."
    echo "Syntax: run-tests.sh <directory>"
    exit 0
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


echo "Testing $arch binaries of type $bintype"
echo "************************************"

# JUnit XML file to output.
XML="${scriptdir}/Test-$typename-$arch.xml";

junitxml_testsuite "${typename^} ($arch)"
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
    "${scriptdir}/junitxml.py" --show --summarise "$XML" || true

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
    if [[ "$file" =~ ^.*/([^/]*),...$ ]] ; then
        roname=${BASH_REMATCH[1]}
    else
        # Not a file with RISC OS extensions, so skipping
        continue
    fi

    echo
    start "$roname"
    if [[ -f "tests/$leaf.disabled" ]] ; then
        reason=$(cat "tests/$leaf.disabled")
        echo "  Skipped${reason:+ ($reason)}"
        # FIXME: This should be a skip, but junitxml.sh doesn't support that.
        result "skip" "$reason"
        continue
    fi
    if [[ "$bintype" == "aif" ]] ; then
        cmd="/$dir.$roname"
        if [[ -f "tests/$leaf.args" ]] ; then
            cmd="$cmd $(cat tests/$leaf.args)"
        fi
    elif [[ "$bintype" == "rm" ]] ; then
        cmd="RMLoad $dir.$roname"
        modname="$roname"
        if [[ -f "tests/$leaf.name" ]] ; then
            modname="$(cat tests/$leaf.name)"
        fi
    else
        result "fail" "Do not know how to run this"
        fail=$((fail + 1))
        continue
    fi

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
      "Sys$Environment": ROBuild

    # Directory to change to before running script
    #dir: <working directory>

    # Commands which should be executed to perform the build.
    # The build will terminate if any command returns a non-0 return code or an error.
    script:
      - PyromaniacDebug traceblock
      - echo *** Loading $roname
      - echo $cmd
      - $cmd
EOM
    if [[ "$bintype" == "rm" ]] ; then
        if [[ ! -f "tests/$leaf.nokill" ]] ; then
            cat >> .robuild.yaml <<EOM
      - echo *** Killing $modname
      - RMKill $modname
EOM
        fi
    fi
    cat >> .robuild.yaml <<EOM
      - echo *** Done
EOM

    zip -q9r /tmp/testrun.zip "$file" .robuild.yaml
    if ./riscos-build-online -A "$arch" -t 30 -i /tmp/testrun.zip \
            | junitxml_output \
            | sed "s/^/  /" ; then
        rc=0
    else
        rc=$?
    fi

    if [[ -f "tests/$leaf.rc" ]] ; then
        expectrc=$(cat "tests/$leaf.rc")
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


