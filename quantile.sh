#!/bin/sh

# Здесь ожидается решение без использования awk

CNT=`wc -l < /path/to/log.txt`
 
DONE=$((CNT * 95 / 100 + 1))
 
cat /path/to/log.txt |  cut -f 3 -d '[' | cut -f 1 -d ']' | sort | sed "${DONE}q;d"
