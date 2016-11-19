#!/bin/sh

# Здесь ожидается решение с использованием awk
awk 'match($0, /"\[(.*)\]"/, m) {print m[1]} '  | sort -n | awk 'BEGIN{cnt=0} {respTime[cnt++]=$1;} END{num=cnt*95/100; num=num%1?int(num)+1:num; print respTime[num-1];}'

exit 0
