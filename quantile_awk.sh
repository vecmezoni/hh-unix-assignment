#!/bin/sh

# Здесь ожидается решение с использованием awk

awk 'match($0, "\"\\[[.0-9]*\\]\"") {print substr($0, 2 + RSTART, RLENGTH - 4)}' "$1" |
sort -n |
awk '{arr[NR] = $0}
END {print arr[int(NR*19/20)]}'
exit 0
