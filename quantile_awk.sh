#!/bin/sh

awk 'match($0, /"\[[.0-9]+\]"/) { print substr($0, RSTART + 2, RLENGTH - 4)|"sort -n" };' |
awk '
{response_time[NR - 1] = $0}
END{
alpha = 0.95;
K = int((NR - 1) * alpha);
K_next = K + 1;
position = alpha * NR;
if (K_next < position) result = response_time[K_next]
else if (K_next == position) result = (response_time[K] + response_time[K_next]) / 2;
else result = response_time[K];
print result;
}
'

exit 0
