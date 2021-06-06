FROM php:8-cli
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
RUN mkdir /app
WORKDIR /app
COPY ./src .
RUN composer install
RUN docker-php-ext-install pdo_mysql
RUN curl -fsSL https://deb.nodesource.com/setup_14.x | bash -
RUN apt-get install -y nodejs
RUN npm install
RUN npm run dev
CMD php artisan serve --host 0.0.0.0