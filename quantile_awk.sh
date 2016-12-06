#!/bin/sh

# Здесь ожидается решение с использованием awk

CNT=`wc -l < /path/to/log.txt`
 
DONE=$((CNT * 95 / 100 + 1))

cat /path/to/log.txt | awk -F '[' '{ print $3 }' | awk -F ']' '{ print $1 }' | sort | sed "${DONE}q;d" 
