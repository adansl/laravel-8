#cache clear
cc:
	docker-compose exec php php artisan config:cache

#run migrations
migrate:
	docker-compose exec php php artisan migrate

#run tests
rt:
	docker-compose exec php vendor/bin/phpunit --verbose
