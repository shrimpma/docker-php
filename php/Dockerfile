FROM php:7.0.33-fpm
RUN apt-get -yqq update
RUN apt-get install -y procps
RUN apt -yqq install libxml2-dev 
RUN apt-get install -y iputils-ping
RUN docker-php-ext-install pdo_mysql
RUN docker-php-ext-install xml
RUN apt-get install -y zlib1g-dev libicu-dev g++
RUN apt-get update && apt-get install -y \
        libfreetype6-dev \
        libjpeg62-turbo-dev \
        libmcrypt-dev \
        libpng-dev \
    && docker-php-ext-install -j$(nproc) iconv mcrypt \
    && docker-php-ext-install intl \
    && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
    && docker-php-ext-install -j$(nproc) gd
# test info 
# install php extensions 
# docker run  -it php:7.0.33-fpm  docker-php-ext-install pdo_mysql

# docker run -it  php:7.0.33-fpm docker-php-ext-enable pdo_mysql

# docker-php-ext-install  iconv mcrypt
