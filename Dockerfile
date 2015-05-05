FROM debian:wheezy

MAINTAINER "Julien Vincent" <julienlucvincent@gmail.com>

RUN mkdir -p /data/www

RUN apt-get update -y && \
    apt-get install -y php5-cli \
    curl \
    git \
    php5-mcrypt \
    php5-curl \
    php5-gd

RUN curl -sS https://getcomposer.org/installer | php
RUN mv composer.phar /usr/local/bin/composer

VOLUME ["/data/www"]
ENTRYPOINT ["composer"]
CMD ["--help"]