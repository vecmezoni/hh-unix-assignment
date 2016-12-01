#!/bin/sh

# Здесь ожидается решение без использованием awk

LINES=$(sed 's/.*\(\[[.0-9]\+\]\).*/\1/' | sed 's/\[\(.*\)\]/\1/' | sort)
IFS=$' '
NUM_LINES=$(echo "$LINES" | wc -l)
TARGET=$(echo "($NUM_LINES*0.95 + 0.5)/1" | bc)
echo "$LINES" | sed "${TARGET}q;d"
unset IFS
