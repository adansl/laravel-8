#!/bin/bash
echo "Running initial script"

echo "Installing Composer dependencies"
docker-compose exec php composer install

echo "Generate APP_KEY"
docker-compose exec php php artisan key:generate

echo "Cleaning cache"
docker-compose exec php php artisan config:cache

echo "Run DB migrations"
docker-compose exec php php artisan migrate

echo "Linking storage"
docker-compose exec php php artisan storage:link

echo "Applying permissions"
docker-compose exec php chown -R www-data:www-data /var/www/html/storage
docker-compose exec php chmod -R 755 /var/www/html/

echo "Done"
