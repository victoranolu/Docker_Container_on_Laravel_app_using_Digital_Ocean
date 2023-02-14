build:
    docker-compose build --no-cache --force-rm

stop:
    docker-compose stop

up:
    docker-compose up -d

composer-update:
    docker exec app composer install

data:
    docker exec app bash -c "php artisan migrate"
	docker exec app bash -c "php artisan db:seed"