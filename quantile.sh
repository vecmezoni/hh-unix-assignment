#!/bin/sh

quantile() {
    i=0
    alpha=0.95
    while read -r data; do
        set -- "$@" "$data"
        i=$((i + 1))
    done
    K=$(((i - 1) * 95 / 100))
    K_next=$((K + 1))
    position=$(echo "$i * $alpha" | bc -l)

    count=0
    for i do
        if [ "$count" -eq "$K" ]
        then
            K_value="$i"
        elif [ "$count" -eq "$K_next" ]
        then
            K_next_value="$i"
            break
        fi
        count=$((count + 1))
    done


    if [ "$(echo "$K_next < $position" | bc -l )" ]
    then
        echo "$K_next_value"
    elif [ "$(echo "$K_next == $position" | bc -l )" ]
    then
        echo "($K_value + $K_next_value) / 2" | bc -l
    else
        echo "$K_value"
    fi
}

sed -n 's/.*\"\[\([0-9.]*\)\]\".*/\1/p' | sort -n | quantile

exit 0
