FROM crowdcube/php-fpm:latest

COPY ./index.php /test/index.php

RUN find /test -type d -exec chmod 2775 '{}' ';' &&\
    find /test -type f -exec chmod 0664 '{}' ';' &&\
    chown -R nginx:nginx /test

WORKDIR /test
