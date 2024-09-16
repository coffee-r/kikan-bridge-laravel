## kikan-bridge-laravel

環境構築練習用リポジトリです。
SQLServerとDocker使う。

### プロジェクト作成

```sh
$ mkdir kikan-bridge-laravel
$ cd kikan-bridge-laravel
$ composer create-project --prefer-dist laravel/laravel src
```

### git

```sh
$ cd kikan-bridge-laravel
$ git init
$ git add .
$ git commit -m "first commit"
$ git branch -M main
$ git remote add origin git@github.com:coffee-r/kikan-bridge-laravel.git
$ git push -u origin main
```

### Dockerfile、docker-compose.yml

```sh
$ cd kikan-bridge-laravel
$ vim docker-compose.local.yml ### 記述内容は省略
$ vim Dockerfile ### 記述内容は省略
$ vim nginx.conf ### 記述内容は省略
$ vim xdebug.ini ### 記述内容は省略
```

### devcontainer.json

開発コンテナー構成ファイルを追加

### vscodeの拡張機能 (書きかけ)

* Japanese Language Pack for VS Code
* PHP Debug
* Laravel Extra Intellisense

### Laravelタイムゾーン設定

src/config/app.php
src/.env

APP_TIMEZONE → Asia/Tokyo

### Laravelロケール設定

src/config/app.php
src/.env

locale → ja
faker_locale → ja_JP

### Laravelログ出力 (書きかけ)

### Laravelデータベースの文字コード設定 (書きかけ)

### Laravelデータベース接続設定

src/.env

```
DB_CONNECTION=sqlsrv
DB_HOST=db
DB_PORT=1433
DB_DATABASE=master
DB_USERNAME=sa
DB_PASSWORD=r00tP@ss3014
DB_ENCRYPT=no
DB_TRUST_SERVER_CERTIFICATE=true
```

### Laravelでroute/web.phpセッションを永続化しない

src/.env
SESSION_DRIVER=array





coffee-r@nagatsukaryounoMacBook-Air kikan-bridge-laravel % ab -n 1000 -c 10 http://localhost:8080/ping
This is ApacheBench, Version 2.3 <$Revision: 1913912 $>
Copyright 1996 Adam Twiss, Zeus Technology Ltd, http://www.zeustech.net/
Licensed to The Apache Software Foundation, http://www.apache.org/

Benchmarking localhost (be patient)
Completed 100 requests
Completed 200 requests
Completed 300 requests
Completed 400 requests
Completed 500 requests
Completed 600 requests
Completed 700 requests
Completed 800 requests
Completed 900 requests
Completed 1000 requests
Finished 1000 requests


Server Software:        nginx/1.27.1
Server Hostname:        localhost
Server Port:            8080

Document Path:          /ping
Document Length:        138313 bytes

Concurrency Level:      10
Time taken for tests:   65.741 seconds
Complete requests:      1000
Failed requests:        991
   (Connect: 0, Receive: 0, Length: 991, Exceptions: 0)
Non-2xx responses:      1000
Total transferred:      138588369 bytes
HTML transferred:       138353369 bytes
Requests per second:    15.21 [#/sec] (mean)
Time per request:       657.413 [ms] (mean)
Time per request:       65.741 [ms] (mean, across all concurrent requests)
Transfer rate:          2058.68 [Kbytes/sec] received

Connection Times (ms)
              min  mean[+/-sd] median   max
Connect:        0    0   0.0      0       0
Processing:   346  650 176.2    584    2363
Waiting:      345  649 176.0    583    2361
Total:        346  650 176.2    584    2363

Percentage of the requests served within a certain time (ms)
  50%    584
  66%    649
  75%    693
  80%    721
  90%    839
  95%    933
  98%   1143
  99%   1440
 100%   2363 (longest request)

