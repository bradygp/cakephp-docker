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

** After you set your secrets.env file ** you should grant permissions for your mysql users to connect from the webserver container. This is a one-time thing, so long as the mysql data files do not get corrupted or destroyed. You will will want to connect to your database as root `docker exec -it {database_container_name} mysql -u root -p` and you will be promoted the root password (which you have already set in secrets.env. You will then want to run `GRANT ALL PRIVILEGES ON {mysql database}.* TO '{mysql user}'@'webserver' IDENTIFIED BY '{mysql password}' WITH GRANT OPTION; FLUSH PRIVILEGES;` You could also set these options in phpmyadmin, but this is easier for me.
 - `docker exec -it {database_container_name} mysql -u root -p`
 - GRANT ALL PRIVILEGES ON {mysql database}.* TO '{mysql user}'@'webserver' IDENTIFIED BY '{mysql password}' WITH GRANT OPTION; FLUSH PRIVILEGES;`
