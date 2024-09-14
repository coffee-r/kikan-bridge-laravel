# ベースイメージ
FROM php:8.3-fpm

# 必要な依存関係のインストール
RUN apt-get update && apt-get install -y \
    unixodbc-dev \
    gcc \
    g++ \
    make \
    && pecl install pdo_sqlsrv xdebug \
    && docker-php-ext-enable pdo_sqlsrv \
    && docker-php-ext-enable xdebug

# 作業ディレクトリの設定
WORKDIR /var/www/html

# アプリケーションコードのコピー
COPY src/ .

# Composerのインストール
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer
RUN composer install

# /var/www/storage ディレクトリとそのサブディレクトリの所有者を www-data に変更
# www-data は、通常、PHP-FPM が実行されるユーザーであり、書き込み権限を与えるために設定
RUN chown -R www-data:www-data /var/www/html/storage

# php.ini をコンテナ内にコピー
COPY xdebug.ini /usr/local/etc/php/conf.d/xdebug.ini