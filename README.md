# hh-unix-assignment

Есть пример лога:

```
172.17.0.1 - - [16/Nov/2016:13:50:30 +0300] 200 "GET / HTTP/1.1" 5278 "-" "Mozilla/5.0 (Linux; U; Android 2.3.5; en-us; HTC Vision Build/GRI40) AppleWebKit/533.1 (KHTML, like Gecko) Version/4.0 Mobile Safari/533.1 (test_host=hh.ru)" "-" "m.hh.ru" "0.180" "hhtoken=h1LNY8_oj55JzWlfW0DrMz4FmIH0; hhuid=AsCe8UyROPiUm1gsOfUxUA--; _xsrf=eb207d562961696a43a0265337ca2535; unique_banner_user=1479293429.674108477120940; default_area=1; hhrole=anonymous; feature_vishnu=false" "1479293430.556" "-" "172.17.0.104:8000" "[0.180]" {147929343037650a6a3c93dd54be4c65} 200 https -1 -
172.17.0.1 - - [16/Nov/2016:13:50:31 +0300] 200 "GET / HTTP/1.1" 5280 "-" "Mozilla/5.0 (Linux; U; Android 2.3.4; fr-fr; HTC Desire Build/GRJ22) AppleWebKit/533.1 (KHTML, like Gecko) Version/4.0 Mobile Safari/533.1 (test_host=hh.ru)" "-" "m.hh.ru" "0.146" "hhtoken=LE9UrrZbPxJiThpGnEckVEClczhJ; hhuid=AsCe9ea8R3!SVlgsOfc8kw--; _xsrf=4d254b92185d4af41c0dac465d885b4e" "1479293431.975" "-" "172.17.0.104:8000" "[0.146]" {1479293431829e7f2655f11d3f395669} 200 https -1 -
172.17.0.1 - - [16/Nov/2016:13:50:32 +0300] 200 "GET / HTTP/1.1" 5284 "-" "Mozilla/5.0 (Linux; U; Android 2.3.4; fr-fr; HTC Desire Build/GRJ22) AppleWebKit/533.1 (KHTML, like Gecko) Version/4.0 Mobile Safari/533.1 (test_host=hh.ru)" "-" "m.hh.ru" "0.255" "hhtoken=LE9UrrZbPxJiThpGnEckVEClczhJ; hhuid=AsCe9ea8R3!SVlgsOfc8kw--; _xsrf=4d254b92185d4af41c0dac465d885b4e; unique_banner_user=1479293431.871388530148417; default_area=1; hhrole=anonymous; feature_vishnu=false" "1479293432.735" "-" "172.17.0.104:8001" "[0.255]" {1479293432480055799b3cbdd1b68cdc} 200 https -1 -
172.17.0.1 - - [16/Nov/2016:13:50:34 +0300] 200 "GET / HTTP/1.1" 5275 "-" "Mozilla/5.0 (Linux; U; Android 2.3.4; en-us; T-Mobile myTouch 3G Slide Build/GRI40) AppleWebKit/533.1 (KHTML, like Gecko) Version/4.0 Mobile Safari/533.1 (test_host=hh.ru)" "-" "m.hh.ru" "0.182" "hhtoken=QVbFlD40wCdKNPyZUJ0GqOMmXMmf; hhuid=AsCfAQNTDKXkNVgsOfkmPA--; _xsrf=749522aff4d4266027045e2247e93d69" "1479293434.545" "-" "172.17.0.104:8002" "[0.182]" {1479293434363dbb2b52e6fe5009f54b} 200 https -1 -
172.17.0.1 - - [16/Nov/2016:13:50:34 +0300] 301 "GET /applicant/favorite_vacancies HTTP/1.1" 0 "https://m.hh.ru/vacancies?text=DGHJDFGZMEWSJ&area=1" "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36 not_mobile_user_agent: test_host=ts48.pyn.ru test_suite_name=m.hh.ru general tests test_class_name=null" "-" "m.hh.ru" "0.445" "hhtoken=hiXvFuQKfH85F9QaKyrxt7RLKjd!; hhuid=AsCdydQztkvZH1gsObMy6g--; unique_banner_user=1479293422.289841380971621; default_area=1; feature_vishnu=false; display=desktop; GMT=3; _xsrf=96a475fed263390346a0b002a86c4efe; _xsrf=96a475fed263390346a0b002a86c4efe; auth_user=ec17ef8695f3ed77ce2df19905c2bc00; hhrole=applicant" "1479293434.963" "-" "172.17.0.104:8003" "[0.445]" {1479293434518c193c52a8c7c0eec078} 301 https -1 -
172.17.0.1 - - [16/Nov/2016:13:50:35 +0300] 200 "GET /favorite HTTP/1.1" 4899 "https://m.hh.ru/vacancies?text=DGHJDFGZMEWSJ&area=1" "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36 not_mobile_user_agent: test_host=ts48.pyn.ru test_suite_name=m.hh.ru general tests test_class_name=null" "-" "m.hh.ru" "0.302" "hhtoken=hiXvFuQKfH85F9QaKyrxt7RLKjd!; hhuid=AsCdydQztkvZH1gsObMy6g--; unique_banner_user=1479293422.289841380971621; default_area=1; feature_vishnu=false; display=desktop; GMT=3; _xsrf=96a475fed263390346a0b002a86c4efe; _xsrf=96a475fed263390346a0b002a86c4efe; auth_user=ec17ef8695f3ed77ce2df19905c2bc00; hhrole=applicant" "1479293435.269" "-" "172.17.0.104:8000" "[0.302]" {1479293434967f4faa7659c575354cee} 200 https -1 -
172.17.0.1 - - [16/Nov/2016:13:50:35 +0300] 200 "GET / HTTP/1.1" 5274 "-" "Mozilla/5.0 (Linux; U; Android 2.3.4; en-us; T-Mobile myTouch 3G Slide Build/GRI40) AppleWebKit/533.1 (KHTML, like Gecko) Version/4.0 Mobile Safari/533.1 (test_host=hh.ru)" "-" "m.hh.ru" "0.192" "hhtoken=QVbFlD40wCdKNPyZUJ0GqOMmXMmf; hhuid=AsCfAQNTDKXkNVgsOfkmPA--; _xsrf=749522aff4d4266027045e2247e93d69; unique_banner_user=1479293434.391727926513572; default_area=1; hhrole=anonymous; feature_vishnu=false" "1479293435.297" "-" "172.17.0.104:8003" "[0.192]" {1479293435105b95cf8aef380034c554} 200 https -1 -
```

Формата
```nginx
  log_format  main  '$remote_addr - $remote_user [$time_local] $status '
                      '"$request" $body_bytes_sent "$http_referer" '
                      '"$http_user_agent" "$http_x_forwarded_for" "$http_host" '
                      '"$request_time" "$http_cookie" "$msec" "$http_if_modified_since" '
                      '"$upstream_addr" "[$upstream_response_time]" {$request_id} $upstream_status $scheme $hh_area_id '
                      '$upstream_cache_status';
```

Нужно посчитать 0,95-квантиль параметра `upstream_response_time`:

1. С использованием awk `quantile_awk.sh`
2. Без использования awk `quantile.sh`

Для проверки codestyle скриптов необходимо использовать https://github.com/koalaman/shellcheck.
