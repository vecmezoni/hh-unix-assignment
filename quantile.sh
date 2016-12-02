#!/bin/bash

# Здесь ожидается решение без использования awk

declare -a list=($(grep -o "\"\[[.0-9]*\]\"" $1 | cut -c 3- | rev | cut -c 3- | rev | sort -n))

length=${#list[@]}
index=$((length*19/20))
quantile=${list[$((index-1))]}
echo $quantile
exit 0
