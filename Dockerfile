FROM php:8-cli
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
RUN mkdir /app
WORKDIR /app
COPY ./src .
RUN composer install