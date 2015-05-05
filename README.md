## PHP Dockerfile


This repository contains **Dockerfile** of [PHP](http://php.net/) for [Docker](https://www.docker.com/)'s [automated build](https://registry.hub.docker.com/u/julienvincent/composer/) published to the public [Docker Hub Registry](https://registry.hub.docker.com/).


### Base Docker Image

* [julienvincent/composer](https://registry.hub.docker.com/u/julienvincent/composer/)


### Installation

1. Install [Docker](https://www.docker.com/).

2. Download [automated build](https://registry.hub.docker.com/u/julienvincent/composer/) from public [Docker Hub Registry](https://registry.hub.docker.com/): 'docker pull julienvincent/composer'

   (alternatively, you can build an image from Dockerfile: 'docker build -t="julienvincent/composer" github.com/julienvincent/docker-composer'`')


### Usage

    docker run -d -p 80:80 julienvincent/composer

docker-compose run composer <command>
