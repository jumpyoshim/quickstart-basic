FROM php:7-fpm

LABEL maintainer="jumpyoshim <jumpyoshim@gmail.com>"

RUN set -x \
    && apt update \
    && apt install -y --no-install-recommends \
      git \
      wget \
    && docker-php-ext-install \
      pdo_mysql \
      mysqli \
      mbstring

ENV COMPOSER_ALLOW_SUPERUSER 1
RUN curl -sS https://getcomposer.org/installer | php \
    && mv composer.phar /usr/local/bin/composer

ENV DOCKERIZE_VERSION v0.6.1
RUN wget https://github.com/jwilder/dockerize/releases/download/$DOCKERIZE_VERSION/dockerize-linux-amd64-$DOCKERIZE_VERSION.tar.gz \
    && tar -C /usr/local/bin -xzvf dockerize-linux-amd64-$DOCKERIZE_VERSION.tar.gz \
    && rm dockerize-linux-amd64-$DOCKERIZE_VERSION.tar.gz

RUN mkdir /app
WORKDIR /app
ADD . /app/
