#!/bin/sh

[[ $# -ne 1 ]] && echo 'Usage: "./quantile.sh <filename>"' && exit 1
[[ ! -f $1 ]] && echo "File '$1' not found" && exit 1

cd "$( dirname "${BASH_SOURCE[0]}" )"

p=0.95                                      # Захардкодил
arr=(`sh ./parse_log.sh $1 | sort -n`)      # Читаю и сортирую массив
NR=${#arr[@]}                               # Длина массива
p=`bc <<< "$p*$NR+0.5"`                     # Умножаю p на NR и прибавляю 0.5

a=`echo $p | sed 's/\..*$//'`               # Убираю дробную часть p
b=$(( NR-1 ))
c=`bc <<< "if ($a < $b) $a else $b" | sed 's/^\./0./'` # Считаю минимум из a и b
pi=`bc <<< "if ($c > 1) $c else 1" | sed 's/^\./0./'`  # Считаю максимум из c и 1

a=`bc <<< "$p-$pi" | sed 's/^\./0./'`
b=1
c=`bc <<< "if ($a < $b) $a else $b" | sed 's/^\./0./'`
pr=`bc <<< "if ($c > 0) $c else 0" | sed 's/^\./0./'`

bc <<< "(1-$pr)*${arr[$(($pi-1))]} + $pr*${arr[$pi]}" | sed 's/^\./0./'
