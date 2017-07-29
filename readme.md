# CakePHP-Docker

This allows you to spin up new CakePHP 3.4.11 apps. This provides the following containers

 - apache(2.4)-php(7.0)
 - mysql(5.7)
 - phpmyadmin(latest)
 - composer(latest)

## Dependencies
 - [docker](https://docs.docker.com/engine/installation/)
 - [docker-compose](https://docs.docker.com/compose/install/)
 - [composer](https://getcomposer.org/doc/00-intro.md)

## Getting Setup
You will need to copy the following files.
 - `secrets.default.env` -> `secrets.env`
  - Any variable that is commented out is optional for you to populate
  - All other variables are required

Finally you will need to cd into the `public_html` directory and run `compose install` to download all of the CakePHP dependencies
