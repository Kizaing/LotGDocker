#This image takes the previously created PHP image and modifies it for fastcgi upstream use by the web container
FROM lotgd-php:cli

MAINTAINER Douche

# Install dotdeb repo, PHP, composer and selected extensions
RUN apt-get update \
    && apt-get -y --no-install-recommends install php5.6-fpm \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /usr/share/doc/*

# Configure FPM to run properly on docker
RUN sed -i "/listen = .*/c\listen = [::]:9000" /etc/php/5.6/fpm/pool.d/www.conf \
    && sed -i "/;access.log = .*/c\access.log = /proc/self/fd/2" /etc/php/5.6/fpm/pool.d/www.conf \
    && sed -i "/;clear_env = .*/c\clear_env = no" /etc/php/5.6/fpm/pool.d/www.conf \
    && sed -i "/;catch_workers_output = .*/c\catch_workers_output = yes" /etc/php/5.6/fpm/pool.d/www.conf \
    && sed -i "/pid = .*/c\;pid = /run/php/php5.6-fpm.pid" /etc/php/5.6/fpm/php-fpm.conf \
    && sed -i "/;daemonize = .*/c\daemonize = no" /etc/php/5.6/fpm/php-fpm.conf \
    && sed -i "/error_log = .*/c\error_log = /proc/self/fd/2" /etc/php/5.6/fpm/php-fpm.conf \
    && usermod -u 1000 www-data

# The following runs FPM and removes all its extraneous log output on top of what your app outputs to stdout
CMD /usr/sbin/php-fpm5.6 -F -O 2>&1 | sed -u 's,.*: \"\(.*\)$,\1,'| sed -u 's,"$,,' 1>&1

# Open up fcgi port
EXPOSE 9000
