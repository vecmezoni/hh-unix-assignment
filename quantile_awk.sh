#!/bin/sh

# Здесь ожидается решение c использованием awk
grep -E '"\[\d\.\d*\]"' -o  "$1" | tr -d '[]"|' | sort -n |

awk '
	{
		pstream_response_time_array[NR] = $0
	}
	END {
		quantile=0.95;
		quantile_position=int(0.95 * NR);
		print pstream_response_time_array[quantile_position + 1];
	}
'
exit 0
