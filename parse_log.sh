#!/usr/bin/env sh

# Вытаскивает $upstream_response_time из лога вида:
# 
# $remote_addr - $remote_user [$time_local] $status 
# "$request" $body_bytes_sent "$http_referer" 
# "$http_user_agent" "$http_x_forwarded_for" "$http_host" 
# "$request_time" "$http_cookie" "$msec" "$http_if_modified_since" 
# "$upstream_addr" "[$upstream_response_time]" {$request_id} $upstream_status $scheme $hh_area_id 
# $upstream_cache_status

[[ $# -ne 1 ]] && echo 'Usage: "./parse_log.sh <filename>"' && exit 1
[ ! -f $1 ] && echo "File '$1' not found" && exit 1

# Для большей надёжности можно было вот так:
# regex=''
# regex+='.*\s-\s.*\s\[.*\]\s.*\s'
# regex+='\".*\"\s.*\s\".*\"\s'
# regex+='\".*\"\s\".*\"\s\".*\"\s'
# regex+='\".*\"\s\".*\"\s\".*\"\s\".*\"\s'
# regex+='\".*\"\s\"\[\(.*\)\]\"\s{.*}\s.*\s.*\s.*\s'
# regex+='.*'

regex='.*\"\[\(.*\)\]\".*'

sed 's/'$regex'/\1/' $1
