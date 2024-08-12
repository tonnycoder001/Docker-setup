FROM php:8.1.0-apache
WORKDIR /var/www/html

#Mod Rewrite
RUN a2enmod rewrite

#Linux Library
RUN apt-get update && apt-get install -y \
    libpng-dev \
    libmariadb-dev \
    libonig-dev \
    libxml2-dev \
    libpng-dev \
    libjpeg-dev \
    zip \
    unzip\ 
    && apt-get clean

#MariaDB
RUN docker-php-ext-install pdo_mysql && docker-php-ext-enable pdo_mysql

#Composer
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

#PHP Extension
RUN docker-php-ext-install gettext intl pdo_mysql gd

RUN docker-php-ext-enable pdo_mysql

#Copy Files
COPY . /var/www/html





