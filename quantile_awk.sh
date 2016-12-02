#!/bin/bash

# Здесь ожидается решение c использованием awk

awk '
	{
		match($0, /\"\[.*\]\"/)
		{
			print substr($0, RSTART + 2, RLENGTH - 4)
		}
	}' "$1" | 
sort -n | 
awk '
	{
		vals[NR] = $0
	}
	END {
		print find_quantile_95(vals, NR)
	}
	function find_quantile_95(arr, num) {
		ind = int(0.95 * num)
		if (ind == 0)
			ind = 1
		return arr[ind]
	}'

