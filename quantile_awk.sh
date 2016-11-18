#!/bin/sh

awk -f parse.awk | sort -n | awk -f quantile.awk

exit 0
