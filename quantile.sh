#!/bin/sh

# Здесь ожидается решение без использования awk
declare -a upstream_response_time_array
alpha=$2
upstream_response_time_array=( $(grep -E '"\[\d\.\d*\]"' -o  "$1" | tr -d '[]"' | sort -n ))
upstream_response_time_array_length="${#upstream_response_time_array[@]}"
quantile_position=$(echo "$upstream_response_time_array_length * $alpha" | bc -l | xargs printf "%1.0f")

quantile_value="${upstream_response_time_array[$quantile_position]}"
echo "$quantile_value" 

exit 0
