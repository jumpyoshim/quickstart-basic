FROM php:7-fpm

RUN set -x && \
    apt update && \
    apt install -y --no-install-recommends \
        git && \
    docker-php-ext-install \
    pdo_mysql \
    mysqli \
    mbstring

RUN curl -sS https://getcomposer.org/installer | php \
    && mv composer.phar /usr/local/bin/composer

RUN mkdir /app
WORKDIR /app
ADD . /app/
