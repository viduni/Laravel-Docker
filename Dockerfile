FROM php:8-cli
# RUN apt-get install php-common
# RUN apt-get update
# RUN apt-get install composer
COPY --from=composer:latest /usr/bin/composer /usr/local/bin/composer
COPY . /usr/src/myapp
WORKDIR /usr/src/myapp