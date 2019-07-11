PHPCLI = docker-compose run --user $(shell id -u):$(shell id -g) php-cli php

start:
	docker-compose up -d

stop:
	docker-compose down -v

build:
	docker run --rm --interactive --tty --volume "$(PWD)":/app --user $(id -u):$(id -g) composer --optimize-autoloader install

test:
	$(PHPCLI) vendor/bin/phpunit

spec:
	$(PHPCLI) vendor/bin/phpspec run
