# CakePHP-Docker

This allows you to spin up new CakePHP 3.4.11 apps. This provides the following containers

 - apache(2.4)-php(7.0)
 - mysql(5.7)
 - phpmyadmin(latest)

## Dependencies
 - [docker](https://docs.docker.com/engine/installation/)
 - [docker-compose](https://docs.docker.com/compose/install/)

## Getting Setup
You will need to copy the following file.
 - `secrets.default.env` -> `secrets.env`
  - Any variable that are commented out are optional for you to use
  - All other variables are required

Run composer on the application code
 - `cd public_html`
 - `docker run --rm -v $(pwd):/app composer/composer install --ignore-platform-reqs`
