#!/usr/bin/env bash

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
