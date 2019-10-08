#!/usr/bin/env bash

# $1 - variable name
function fail_if_empty {
    if [ -z "$1" ]; then
        print_error "Empty string detected"
    fi
}

# $1 - variable name
function fail_if_not_empty {
    if [ -n "$1" ]; then
        print_error "String is not empty"
    fi
}

# $1 - search
# $2 - replace
# $3 - file
function str_replace_file {
    if [ -z "$1" ]; then
        echo "str_replace_file: wrong search var"
        sleep 1s
        exit 1
    fi
    if [ -z "$2" ]; then
        echo "str_replace_file: wrong replace var"
        sleep 1s
        exit 1
    fi
    if [ -z "$3" ]; then
        echo "str_replace_file: wrong file var"
        sleep 1s
        exit 1
    fi

    sed -i "s|$1|$2|" $3
}

# $1 - repo url like git@github.com:%username%/%project%.git
function repo_access_check {
    git ls-remote "$1" &>-
    if [ "$?" -ne 0 ]; then
        print_error "Repo $1 is not accessible"
    else
        print_info "Repo $1 is accessible"
    fi
}
