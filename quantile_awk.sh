#!/bin/sh

awk 'match($0, /\"\[[0-9]+\.[0-9]+\]\"/){print substr($0, RSTART+2, RLENGTH-4)}' | sort -n | awk '{array[NR] = $0} END{print array[int(NR*0.95 + 0.5)]}'

exit 0
