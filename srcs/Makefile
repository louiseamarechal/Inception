.PHONY: all
all: up

.PHONY: up
up:
	docker compose up -d

.PHONY: build
build:
	docker compose build

.PHONY: down
down:
	docker compose down -v

.PHONY: clean
clean: down
	docker image rm --force srcs-nginx srcs-wordpress srcs-mariadb

.PHONY: fclean
fclean:
	docker container 	prune --force
	docker image		prune --all --force
	docker network		prune --force
	docker volume		prune --force

.PHONY: info
info:
	@docker image		ls -a	&& echo
	@docker container	ls -a	&& echo
	@docker network		ls		&& echo
	@docker volume		ls		&& echo

.PHONY: re
re: clean up

.PHONY: nginx
nginx:
	docker compose exec nginx /bin/bash

.PHONY: wordpress
wordpress:
	docker compose exec wordpress /bin/bash

.PHONY: mariadb
mariadb:
	docker compose exec mariadb /bin/bash