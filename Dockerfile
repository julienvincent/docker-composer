# julienvincent/composer

FROM php:7-cli
MAINTAINER "Julien Vincent" <julienlucvincent@gmail.com>

# Install HHVM
RUN apt-get update -y && \
    apt-get install -y curl zlibc zlib1g zlib1g-dev

RUN docker-php-ext-install mbstring
RUN docker-php-ext-install zip

RUN curl -sS https://getcomposer.org/installer | php
RUN mv composer.phar /usr/local/bin/composer

ENTRYPOINT ["composer"]
CMD ["--help"]