#!/bin/sh

# Здесь ожидается решение c использованием awk

sed -e "s/.*\[.*\].*\[\(.*\)].*/\1/" "$1" | sort -n |
awk 'BEGIN {
	quantil=0
	order=1
	len=0
}
{
	arr[len]=$1
	len++
}
END{
	while (order != len){
		first_num=order/len
		second_num=(order+1)/len
		if ((first_num <= 0.95) && (0.95 < second_num)) {order_rem=order}
		order+=1
	}
	if (len == 1) {quantil=arr[0]}
	else if (order_rem/len == 0.95) {quantil=arr[order_rem-1]}
	else quantil=(arr[order_rem-1]+arr[order_rem])/2
	print quantil
}'

exit 0
