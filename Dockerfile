FROM php:7.1-fpm-alpine

COPY --from=composer:1.5 /usr/bin/composer /usr/bin/composer

CMD ["php", "-a"]
