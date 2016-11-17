#!/bin/bash

set -e

os=$(uname)

if [[ "$os" != "Linux" ]]; then
    echo "Unsupported system" 1>&2
    exit 1
fi

if (strace -f -e trace=execve "$@" 2>&1 | grep execve | grep '"awk"' &> /dev/null); then
    echo 'awk call found'
    exit 0
else
    echo 'no awk call'
    exit 1
fi
