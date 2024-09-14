## kikan-bridge-laravel

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
$ vim docker-compose.local.yml ### 省略
$ vim Dockerfile ### 省略
$ vim nginx.conf ### 省略
$ vim xdebug.ini ### 省略
```

