FROM php:7.1-fpm-alpine

RUN apk add --no-cache zlib-dev \
    && docker-php-ext-install zip \
    && apk del zlib-dev

COPY --from=composer:1.5 /usr/bin/composer /usr/bin/composer

CMD ["php", "-a"]
