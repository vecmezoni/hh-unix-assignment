#!/bin/awk -f

NF {
	split($0, a, "\[")
	split(a[3], b, "\]")
	print b[1]
}
