FROM php:7.2-apache

RUN mkdir -p /var/www/apache-server/html
RUN apt-get update -y && apt-get install -y apache2-utils libaprutil1-dbd-mysql

RUN a2enmod authn_dbd
RUN docker-php-ext-install mysqli pdo pdo_mysql
