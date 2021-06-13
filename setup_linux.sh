#!/bin/bash
mkdir -p volumes/drupal
curl https://ftp.drupal.org/files/projects/drupal-9.1.10.tar.gz | tar zx --strip=1 -C volumes/drupal
docker-compose up -d
docker-compose exec php chown -R www-data:www-data /var/www/html/sites/default