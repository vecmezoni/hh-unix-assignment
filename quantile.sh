#!/bin/sh

# Здесь ожидается решение без использования awk

declare -a array

array=( $(sed -e "s/.*\[.*\].*\[\(.*\)].*/\1/" "$1" | sort -n))

declare -i order=1
declare -i order_rem=1
declare -i length=${#array[@]}

while [ "$order" -ne "$length" ]; do
	first_num=$(echo "$order / $length" | bc -l)
	second_num=$(echo "($order+1) / $length" | bc -l)
	if [ "$(echo "$first_num <= 0.95" | bc -l)" -eq 1 ] \
	&& [ "$(echo "0.95 < $second_num" | bc -l)" -eq 1 ] ; then
		order_rem="$order"
	fi
	order="$order"+1;
done

quantil=0
if [ "$length" -eq 1 ]; then
	quantil="${array[0]}"
elif [ "$(echo "($order_rem / $length) == 0.95" | bc -l)" -eq 1 ]; then
	quantil=$(echo "${array[$order_rem-1]}" | bc -l)
else
	quantil=$(echo "(${array[$order_rem]} + ${array[$order_rem-1]}) / 2" | bc -l)
fi

echo "$quantil"

exit 0
