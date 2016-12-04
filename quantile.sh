#!/bin/sh

# Здесь ожидается решение c использованием awk
declare -a time=($(grep -o "\"\[[.0-9]*\]\"" "$1" | grep -o "[.0-9]*" | sort -n))
length=${#time[@]}
index=$(((length*95+50)/100))
result=${time[$((index-1))]}
echo "$result"
exit 0
