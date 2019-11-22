FROM php:7.3-fpm-alpine3.10

RUN apk add --no-cache \
    openssl \
    mysql-client \
    nodejs \
    npm \
    yarn \
    libzip-dev \
    zlib-dev
    # freetype-dev \
    # libjpeg-turbo-dev \
    # libpng-dev \

# RUN docker-php-ext-configure gd \
#     --with-freetype-dir=/var/www \
#     --with-jpeg-dir=/var/www \
#     --with-png-dir=/var/www \
#     --with-webp-dir=/var/www

RUN docker-php-ext-install pdo \
    pdo_mysql \
    bcmath \
    mysqli \
    exif \
    # gd \
    opcache \
    zip

RUN rm -rf /var/www/html

WORKDIR /var/www

COPY . .

EXPOSE 9000

ENTRYPOINT [ "php-fpm" ]
