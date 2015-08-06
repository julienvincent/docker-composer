# julienvincent/composer

FROM debian:jessie
MAINTAINER "Julien Vincent" <julienlucvincent@gmail.com>

ENV HHVM_VERSION 3.8.1~jessie

RUN mkdir -p /data/www

# Install HHVM
RUN apt-key adv --recv-keys --keyserver hkp://keyserver.ubuntu.com:80 0x5a16e7281be7a449 && \
    echo deb http://dl.hhvm.com/debian jessie main | tee /etc/apt/sources.list.d/hhvm.list && \
    apt-get update -y && \
    apt-get install -y hhvm=${HHVM_VERSION} curl && \
    apt-get clean -y && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN curl -sS https://getcomposer.org/installer | php
RUN mv composer.phar /usr/local/bin/composer

VOLUME ["/data/www"]
ENTRYPOINT ["composer"]
CMD ["--help"]