#!/bin/sh

tmp="$(tempfile)"
len=$(grep -o '"\[[0-9]\{1,\}\.[0-9]\{1,\}\]"' | grep -o '[0-9]\{1,\}\.[0-9]\{1,\}' | sort -n | tee "$tmp" | wc -l)
ind=$(((len * 95 + 50) / 100))
sed -n ${ind}p "$tmp"
rm "$tmp"

exit 0
