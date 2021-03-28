FROM joseluisq/php-fpm:8.0.3

RUN apk --no-cache add autoconf g++ make && pecl install xdebug && docker-php-ext-enable xdebug && rm -rf /tmp/pear; apk del autoconf g++ make

RUN { \
echo 'xdebug.start_with_request=yes'; \
echo 'xdebug.client_host=172.27.80.1'; \
    } > /usr/local/etc/php/conf.d/xdebug.ini
