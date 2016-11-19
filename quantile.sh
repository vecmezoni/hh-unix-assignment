#!/bin/sh

quantile_95(){
  cnt=0
  while read -r data
  do
	  if [ $cnt -eq 0 ]
	  then
	   set "$data"
	  else
	   set -- "$@" "$data"
	  fi 
	  cnt=$((cnt + 1))
  done
 
  DIV=$((cnt * 95 / 100))
  MOD=$((cnt * 95 % 100))
  if [ $MOD != 0 ]
  then
	DIV=$((DIV + 1))
  fi  
 
 cnt=0 
 for i do
	if [ $cnt -eq $((DIV - 1)) ]
	then
	  echo "$i"
	  break
	fi
	cnt=$((cnt + 1))
  done
}

# Здесь ожидается решение без использования awk

sed -n 's/.*\"\[\(.*\)\]\".*/\1/p' | sort -n | quantile_95

exit 0
