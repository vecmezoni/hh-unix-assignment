#!/bin/bash

# Здесь ожидается решение без использования awk

find_quantile_95() {
  num=0
  declare -a arr
  while read -r data; do
      num=$((num + 1))
      arr[$num]=$data
    done
    ind=$((num * 95 / 100))
    if [ "$ind" -eq 0 ]; then
      ind=1
    fi
    echo "${arr[$ind]}"
}

sed 's/.*\"\[\([^]]*\)\].*/\1/g' "$1" | sort -n | find_quantile_95
