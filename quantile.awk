#!/bin/awk -f

function ceil(x) {
	return x==int(x) ? x : int(x)+1
}
BEGIN {
	count = 0
}
{
	++count
	sorted_array[count] = $0
}
END {
	if (count == 0) {
		print "Error: empty array" | "cat 1>&2"
	}
	else {
		idx = ceil(count * 0.95)
		print sorted_array[idx]
	}
}
