FROM php:7.1-fpm

RUN apt-get update && apt-get install -y libmcrypt-dev libjpeg62-turbo-dev libpng12-dev

# Install opcache
RUN docker-php-ext-install opcache

# Install mcrypt
RUN docker-php-ext-install mcrypt

# Install mysqli
RUN docker-php-ext-install mysqli

# Install gd
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr && docker-php-ext-install gd

EXPOSE 9000