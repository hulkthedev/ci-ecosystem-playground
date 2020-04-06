FROM php:7.4.4-fpm-alpine3.11

LABEL maintainer="fatal.error.27@gmail.com"

RUN apk update && \
    apk upgrade && \
    apk add --no-cache \
        $PHPIZE_DEPS \
        php7-dev \
        bash

RUN pecl install \
    xdebug-2.9.4

RUN docker-php-ext-enable \
    xdebug

RUN echo Europe/Berlin > /etc/timezone

COPY . /var/www/html

RUN chown -R www-data:www-data /var/www/html