#!/bin/bash


awk '{
	match($0, /\[[.0-9]+\]/)
	print substr($0, RSTART+1, RLENGTH-2)
}' "$1" | 
sort -n |
awk '{
	response_time_array[array_len]=$1
	array_len += 1
}
END{
	ind = int(array_len*95/100 - 1)
	if (array_len*95 % 100 != 0){
	    ind += 1
	}
	quantil=response_time_array[ind]
	print quantil
}'


exit 0
