#!/bin/bash
##
# Test that the binaries are working properly.
#

set -e
set -o pipefail

scriptdir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd -P)"
rootdir="$(cd "$scriptdir/.." && pwd -P)"

source "${scriptdir}/progress.sh"

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

echo "Testing $arch binaries of type $bintype"
echo "************************************"

pass=0
fail=0


for file in $(find "$dir" -type f | sort) ; do
    leaf=$(basename "$file")
    if [[ "$file" =~ ^.*/([^/]*),...$ ]] ; then
        roname=${BASH_REMATCH[1]}
    else
        # Not a file with RISC OS extensions, so skipping
        continue
    fi

    echo
    step "Test file $roname:"
    if [[ -f "tests/$leaf.disabled" ]] ; then
        reason=$(cat "tests/$leaf.disabled")
        echo "  Skipped${reason:+ ($reason)}"
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
        failure "Do not know how to run this"
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
        cat >> .robuild.yaml <<EOM
      - echo *** Killing $modname
      - RMKill $modname
EOM
    fi
    cat >> .robuild.yaml <<EOM
      - echo *** Done
EOM

    zip -q9r /tmp/testrun.zip "$file" .robuild.yaml
    if ./riscos-build-online -A "$arch" -t 30 -i /tmp/testrun.zip \
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
        failure "Expected RC $expectrc"
        fail=$((fail + 1))
    else
        success "OK"
        pass=$((pass + 1))
    fi

done

# We no longer need the robuild file
rm .robuild.yaml

echo
notice "Tests complete"
echo "Pass : $pass"
echo "Fail : $fail"

if [[ "$fail" != 0 ]] ; then
    exit 1
else
    exit 0
fi


