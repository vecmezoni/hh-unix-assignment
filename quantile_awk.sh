#!/bin/sh

# Здесь ожидается решение с использования awk

awk '{match($0, /\"\[[.0-9]+\]\"/, arr); gsub(/[\[\]\"]/,"", arr[0]); print(arr[0]) | "sort"}' | awk '{all[NR]=$0} END{print(all[int(NR*0.95 + 0.5)])}'
