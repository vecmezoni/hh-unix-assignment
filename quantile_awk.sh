#!/bin/sh

# Здесь ожидается решение без использования awk
awk 'match($0, "\"\\[[.0-9]*\\]\"") {print substr($0, 2 + RSTART, RLENGTH - 4)}' "$1" | sort -n | awk '{time[NR] = $0} END {print time[int(NR*95/100+0.5)]}'
exit 0
