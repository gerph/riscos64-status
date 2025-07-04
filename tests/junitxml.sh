#!/bin/bash
##
# Operations to handle a record to the JUnit XML files.
#
# Expected operation:
#
#   junitxml_tempdir "<empty-or-temporary-directory>"
#   [junitxml_testsuite "<test suite name>"]
#   [junitxml_ci_properties]
#   [junitxml_property "<property name>" "<property value>"]
#   ...
#   for-all-tests:
#       junitxml_start "<test name>" ["<file>" ["<line>"]]
#       [junitxml_class "<class name>"]
#       ... | junit_output
#       ...
#       junitxml_result "pass|fail"
#   ...
#   junitxml_report "<filename>"
#

# Our constant variables
junitxml_testnum=0

# Count of result
junitxml_nfail=0
junitxml_nskip=0
junitxml_npass=0

# The name of this test
junitxml_testsuite_name="$(basename "$0")"


##
# Clean up the temporary directory we created.
function junitxml_cleanup() {
    if [[ "$(uname -s)" == 'Darwin' ]] ; then
        # On OSX, '--one-file-system' does not exist.
        rm -rf "${junitxml_tempdir}"
    else
        rm -rf --one-file-system "${junitxml_tempdir}"
    fi
}


##
# Set up the temporary directory (or use a directory already set up).
function junitxml_tempdir() {
    local tempdir="$1"
    if [[ "$tempdir" != '' ]] ; then
        junitxml_tempdir="$tempdir"
        return 0
    fi

    if [[ "$(uname -s)" == 'Darwin' ]] ; then
        junitxml_tempdir="$(mktemp -d -t junitxml)"
    else
        junitxml_tempdir="$(mktemp -d -t junitxml.XXXXXXXX)"
    fi
    if [[ "$?" != '0' || "$junitxml_tempdir" == '' ]] ; then
        echo "Cannot create temporary directory. That would be bad." >&2
        exit 1
    fi
    trap junitxml_cleanup EXIT
}


##
# Name the test suite we're part of.
function junitxml_testsuite() {
    junitxml_testsuite_name="${1:-$junitxml_testsuite_name}"
}


##
# Provide a property name for the test suite.
#
# @param $1     Property name (simple string)
# @param $2     Property value (single line string)
function junitxml_property() {
    local prop="$1"
    local value="$2"
    echo -e "$prop\t$value" >> "$(junitxml_logname 'properties' '-')"
}


##
# Include the CI system's properties as well
function junitxml_ci_properties() {
    local var
    if [[ "$CI_VARIABLES" != '' ]] ; then
        for var in $CI_VARIABLES ; do
            junitxml_property "$var" "${!var}"
        done
    fi
}

##
# Read all the properties provided, and write to stdout.
function junitxml_readproperties() {
    local propfile="$(junitxml_logname 'properties' '-')"
    if [[ ! -f "$propfile" ]]; then
        return 0
    fi

    # The file exists, so we want to output the property names, sorted
    sort "$propfile"
}


##
# Generate a log name for a given test (or the current one)
function junitxml_logname() {
    local log="$1"
    local num="${2:-$junitxml_testnum}"
    if [[ "$num" == '-' ]] ; then
        printf "%s/junit.%s.txt" "$junitxml_tempdir" "$log"
    else
        printf "%s/junit.%04d.%s.txt" "$junitxml_tempdir" "$num" "$log"
    fi
}


##
# Read a log for a given test (or the current one)
function junitxml_readlog() {
    local log="$1"
    local num="${2:-$junitxml_testnum}"
    local logfile="$(junitxml_logname "$log" "$num")"
    if [[ -f "$logfile" ]] ; then
        cat "$logfile"
    fi
}


##
# Get a timestamp from something
function junitxml_timestamp() {
    local value
    if [[ "$junitxml_timestamp" == '' ]] ; then
        # Work out how we're going to get timestamps
        value="$(date +%s%3N 2> /dev/null)"
        if [[ "$value" != '' && "${value: -1}" != 'N' ]] ; then
            junitxml_timestamp='d'
        else
            value="$(python -c "import time; print(int(time.time()*1000))"; 2> /dev/null)"
            if [[ "$value" != '' ]] ; then
                junitxml_timestamp='P'
            else
                value="$(perl -MTime::HiRes=time -e 'print int(time() * 1000)' 2> /dev/null)"
                if [[ "$value" != '' ]] ; then
                    junitxml_timestamp='p'
                else
                    value="$(date +%s 2> /dev/null)"
                    if [[ "$value" != '' && "${value: -1}" != 's' ]] ; then
                        junitxml_timestamp='D'
                    else
                        # Give up; can't find anything that looks sensible on the system
                        junitxml_timestamp='0'
                    fi
                fi
            fi
        fi
    fi

    if [[ "$junitxml_timestamp" == 'd' ]] ; then
        value="$(date +%s%3N 2> /dev/null)"
    elif [[ "$junitxml_timestamp" == 'D' ]] ; then
        value="$(date +%s 2> /dev/null)"
    elif [[ "$junitxml_timestamp" == 'P' ]] ; then
        value="$(python -c "import time; print(int(time.time()*1000))"; 2> /dev/null)"
    elif [[ "$junitxml_timestamp" == 'p' ]] ; then
        value="$(perl -MTime::HiRes=time -e 'print int(time() * 1000)' 2> /dev/null)"
    else
        value='0'
    fi
    echo -n "$value"
}


##
# Get a timestamp from something
function junitxml_timedelta() {
    local start="$1"
    local end="$2"
    local value
    local len

    if [[ "$junitxml_timestamp" == 'd' ||
          "$junitxml_timestamp" == 'P' ||
          "$junitxml_timestamp" == 'p' ]] ; then
        # Millisecond accuracy, multiplied up, so extract
        value="$(( end - start ))"
        if [[ "${#value}" -lt 4 ]] ; then
            value="0.$(printf '%03d' $value)"
        else
            len=${#value}
            value="${value:0:$((len-3))}.${value: -3}"
        fi
    elif [[ "$junitxml_timestamp" == 'D' ]] ; then
        # Just second values
        value="$(( end - start ))"
    else
        value='0'
    fi
    echo -n "$value"
}


##
# Start a test and name it.
#
# To be called at the start of the test.
#
# @param $1     Readable name for this test
function junitxml_start() {
    local name
    local testfile
    local testline

    junitxml_testnum=$(( junitxml_testnum + 1 ))
    name="${1:-test_$junitxml_testnum}"
    testfile="${2:-}"
    testline="${3:-}"
    echo -n "$name" > "$(junitxml_logname "name")"
    echo -n "$testfile" > "$(junitxml_logname "file")"
    echo -n "$testline" > "$(junitxml_logname "line")"
    junitxml_timestamp > "$(junitxml_logname "starttime")"
    date +%Y-%m-%dT%H:%M:%S > "$(junitxml_logname "startdate")"
}


##
# Configure metadata 'class' for this test
#
# @param $1     Classname this test used
function junitxml_class() {
    local class="$1"
    echo -n "$class" > "$(junitxml_logname "class")"
}


##
# Report the output of the current test.
function junitxml_output() {
    local output="$(junitxml_logname "output")"
    local line

    echo -n > "$output"
    while IFS= read line ; do
        echo "$line"
        echo "$line" | sed -E $'s/\x1b\[([0-9]*;*)*[a-z]//g; s/\x0f|\x1b\\(B//g' >> "$output"
    done
    junitxml_timestamp > "$(junitxml_logname "endtime")"
}


##
# Record a result of the current test.
function junitxml_result() {
    local result="$1"
    local failtype="${2:-failure}"
    local failmessage="${3:-}"
    if [[ ! -f "$(junitxml_logname "endtime")" ]] ; then
        # If we didn't already record the end time, mark it now.
        junitxml_timestamp > "$(junitxml_logname "endtime")"
    fi
    echo -n "$result" > "$(junitxml_logname "state")"
    if [[ "$result" == 'skip' ]] ; then
        echo -n "${failmessage:-Skipped}" > "$(junitxml_logname "failmessage")"
        junitxml_nskip=$(( junitxml_nskip + 1 ))
    elif [[ "$result" != 'pass' ]] ; then
        echo -n "$failtype" > "$(junitxml_logname "failtype")"
        echo -n "${failmessage:-Test failure}" > "$(junitxml_logname "failmessage")"
        junitxml_nfail=$(( junitxml_nfail + 1 ))
    else
        junitxml_npass=$(( junitxml_npass + 1 ))
    fi
}


##
# Generate an XML report from the held data
function junitxml_report() {
    local output="$1"
    local failures=0
    local total=0
    local num f
    local lastnum
    local timestamp
    local start end duration
    local class testname testfile testline
    local state
    local testsuite
    local failtype failmessage
    local properties propname propvalue

    echo "<?xml version='1.0' encoding='UTF-8'?>" > "$output"
    for num in $(seq 0 "$junitxml_testnum") ; do
        f="$(junitxml_logname 'state' "$num")"
        if [[ -f "$f" ]] ; then
            total=$(( total + 1 ))
            if [[ "$(cat "$f")" == 'fail' ]] ; then
                failures=$(( failures + 1 ))
            fi
            if [[ "$start" == "" ]] ; then
                start="$(junitxml_readlog 'starttime' "$num")"
                timestamp="$(junitxml_readlog 'startdate' "$num")"
            fi
            lastnum="$num"
        fi
    done

    end="$(junitxml_readlog 'endtime' "$lastnum")"
    duration=$(junitxml_timedelta "$start" "$end")

    echo "<testsuite name='$junitxml_testsuite_name' tests='$total' failures='$failures'" \
         "hostname='$(hostname -f)' time='$duration' timestamp='$timestamp'>" >> "$output"

    properties=0
    while IFS=$'\t' read propname propvalue ; do
        properties=$(( properties + 1 ))
        if [[ "${properties}" == 1 ]] ; then
            echo "  <properties>" >> "$output"
        fi
        echo "    <property name='$propname' value='$propvalue' />" >> "$output"
    done < <(junitxml_readproperties)
    if [[ "${properties}" != 0 ]] ; then
        echo "  </properties>" >> "$output"
    fi

    for num in $(seq 0 "$junitxml_testnum") ; do
        testname="$(junitxml_readlog 'name' "$num")"
        testfile="$(junitxml_readlog 'file' "$num")"
        testline="$(junitxml_readlog 'line' "$num")"
        class="$(junitxml_readlog "class" "$num")"
        start="$(junitxml_readlog "starttime" "$num")"
        end="$(junitxml_readlog "endtime" "$num")"
        duration=$(junitxml_timedelta "$start" "$end")
        state="$(junitxml_readlog "state" "$num")"
        if [[ "$state" == "" ]] ; then
            continue
        fi

        # Write 'testcase' element
        echo -n "  <testcase" >> "$output"
        echo -n " name='$testname' time='$duration'" >> "$output"
        if [[ "$class" != '' ]] ; then
            echo -n " classname='$class'" >> "$output"
        fi
        if [[ "$testfile" != '' ]] ; then
            echo -n " file='$testfile'" >> "$output"
        fi
        if [[ "$testline" != '' ]] ; then
            echo -n " line='$testline'" >> "$output"
        fi

        if [[ "$state" == "pass" ]] ; then
            echo " />" >> "$output"
        elif [[ "$state" == "skip" ]] ; then
            echo ">" >> "$output"
            failmessage="$(junitxml_readlog "failmessage" "$num")"
            echo -n "    <skipped message=\"$failmessage\"><![CDATA[" >> "$output"
            junitxml_readlog "output" "$num" >> "$output"
            echo "]]></skipped>" >> "$output"
            echo "  </testcase>" >> "$output"
        else
            echo ">" >> "$output"
            failtype="$(junitxml_readlog "failtype" "$num")"
            failmessage="$(junitxml_readlog "failmessage" "$num")"
            echo -n "    <failure type=\"$failtype\" message=\"$failmessage\"><![CDATA[" >> "$output"
            junitxml_readlog "output" "$num" >> "$output"
            echo "]]></failure>" >> "$output"
            echo "  </testcase>" >> "$output"
        fi
    done
    echo "</testsuite>" >> "$output"
}
