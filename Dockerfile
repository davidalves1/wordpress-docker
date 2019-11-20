FROM php:7.3-fpm-alpine3.10
RUN apk add --no-cache openssl mysql-client nodejs npm
RUN docker-php-ext-install pdo pdo_mysql bcmath

WORKDIR /var/www

RUN rm -rf /var/www/html

EXPOSE 8081

ENTRYPOINT [ "php-fpm" ]
