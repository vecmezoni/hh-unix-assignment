#!/bin/bash

set -e

working_dir=$(dirname "${BASH_SOURCE[0]}")

cd "$working_dir"

for test in ./awk_checker/positive*; do
    name=$(basename "$test")
    if ../validators/awk_checker.sh "$test" &> /dev/null; then
        echo "Test '${name}' passed"
    else
        echo "Test '${name}' failed" 1>&2
        exit 1
    fi
done

for test in ./awk_checker/negative*; do
    name=$(basename "$test")
    if ../validators/awk_checker.sh "$test" &> /dev/null; then
        echo "Test '${name}' failed" 1>&2
        exit 1
    else
        echo "Test '${name}' passed"
    fi
done
