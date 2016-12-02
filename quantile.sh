#!/bin/bash
# Извлекаю времена откликов в массив
declare -a response_time_array
response_time_array=($(sed -e 's/.*\"\[\([^]]*\)\].*/\1/g' "$1" | sort -n))

#Ищу индекс квантили
length=${#response_time_array[@]}
index=$((length * 95 / 100 - 1))
index_mod=$((length * 95 % 100))
if [ $index_mod != 0 ]
then
  let index+=1
fi

echo "${response_time_array[index]}"
exit 0
