FROM php:7.4-fpm-alpine

COPY build/run.sh /opt/bin/run.sh
COPY build/default.conf /etc/nginx/conf.d/default.conf
COPY build/php.ini /usr/local/etc/php/php.ini
COPY public/ /var/www/html/public

RUN apk add nginx --no-cache \
    && mkdir /run/nginx \
    && chown -R nginx:nginx /run/nginx \
    && chown -R www-data:www-data /var/www/html \
    && chmod +x /opt/bin/run.sh

CMD ["/opt/bin/run.sh"]