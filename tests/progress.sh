#!/bin/bash
##
# Simple progress reporting functions


# Ensure that we have some terminal that has colours
if [[ "$TERM" = '' || "$CI" != '' ]] ; then
    export TERM=xterm
fi

# Terminal control codes to change colours.
TERM_RED="$(tput setaf 1 2> /dev/null || true)"
TERM_GREEN="$(tput setaf 2 2> /dev/null || true)"
TERM_YELLOW="$(tput setaf 3 2> /dev/null || true)"
TERM_PURPLE="$(tput setaf 5 2> /dev/null || true)"
TERM_RESET="$(tput sgr0 2> /dev/null || true)"

# Whether we are debugging this
debugging=false


##
# Report what we're about to do.
function step() {
    local message="$1"
    echo "=> ${TERM_PURPLE}$message${TERM_RESET}"
}


##
# Report a diagnostic message, if requested
function debug() {
    local message="$1"
    if "$debugging" ; then
        echo "   [$message]"
    fi
}


##
# Report a success message
function success() {
    local message="$1"
    echo "<= ${TERM_GREEN}$message${TERM_RESET}"
}


##
# Report a failure message (inverse of success), but don't exit
function failure() {
    local message="$1"
    echo "<= ${TERM_RED}$message${TERM_RESET}"
}


##
# Report a warning/informational message
function notice() {
    local message="$1"
    echo "** ${TERM_YELLOW}$message${TERM_RESET}"
}


##
# Report a failure and exit
function error() {
    local message="$1"

    echo "!> ${TERM_RED}$message${TERM_RESET}" >&2
    exit 1
}

