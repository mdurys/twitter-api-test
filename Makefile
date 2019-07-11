start:
	docker-compose up -d

stop:
	docker-compose down -v

build:
	docker run --rm --interactive --tty --volume "$(PWD)":/app --user $(id -u):$(id -g) composer --optimize-autoloader install
