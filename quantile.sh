#!/bin/sh

TEMPFILE=$(tempfile)
cut -d '[' -f3 | cut -d ']' -f1 | grep -v "^$" | sort -n > "$TEMPFILE"
LINES_COUNT=$(wc -l < "$TEMPFILE")
LINE_NUM=$((LINES_COUNT-LINES_COUNT*(100-95)/100))
head <"$TEMPFILE" -n $LINE_NUM | tail -n 1
rm "$TEMPFILE"

exit 0
