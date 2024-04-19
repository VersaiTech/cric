FROM php:8.1-apache

RUN apt-get update && apt-get install -y libxml2-dev libxslt-dev libcurl4-openssl-dev libpcre3-dev libmcrypt-dev libmhash-dev libzip-dev libxslwp-dev libgmp-dev libonig-dev bcmath

COPY . /var/www/html

RUN docker-php-ext-install mysqli bcmath xml xmlrpc curl pdo_mysql pdo_sqlite zip pcntl mcrypt mhash mbstring xsl zip opcache

CMD ["apache2-foreground"]
