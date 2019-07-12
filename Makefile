UID_GID = $(shell id -u):$(shell id -g)
PHPCLI = docker-compose run --user $(UID_GID) php-cli php

start:
	docker-compose up -d

stop:
	docker-compose down -v

build:
	docker-compose run --rm --user $(UID_GID) composer --optimize-autoloader install

test:
	$(PHPCLI) vendor/bin/phpunit

specs:
	$(PHPCLI) vendor/bin/phpspec run
