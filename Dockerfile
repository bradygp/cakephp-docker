FROM php:7.0-apache

RUN apt-get update \
  && apt-get install -y zlib1g-dev libicu-dev g++ \
  && docker-php-ext-install pdo pdo_mysql \
  && docker-php-ext-configure intl \
  && docker-php-ext-install intl \
  && a2enmod rewrite