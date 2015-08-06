# Composer Dockerfile

This repository contains an automated **Dockerfile** of [HHVM](http://hhvm.com/)
setup for use in docker-compose

## Supported tags

+ `latest`

### Base Docker Image

* [debian:jessie](https://registry.hub.docker.com/_/debian/)

### Usage

docker-compose.yml:

    composer:
      image: julienvincent/composer
      volumes:
        - laravel/folder:/data/www
      working_dir: /data/www

using:

    docker-compose run artisan tinker
