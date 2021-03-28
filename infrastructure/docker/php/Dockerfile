FROM joseluisq/php-fpm:8.0.3

RUN apk --no-cache add autoconf g++ make && pecl install xdebug && docker-php-ext-enable xdebug && rm -rf /tmp/pear; apk del autoconf g++ make

