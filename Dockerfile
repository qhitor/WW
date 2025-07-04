FROM docker.io/library/php:8-apache
FROM php:7.4-apache
RUN apt-get update && apt-get install -y \
    libzip-dev \
    zip \
    unzip \
    git \
    && docker-php-ext-install zip pdo_mysql mysqli
COPY . /var/www/html
WORKDIR /var/www/html
CMD ["apache2-foreground"]