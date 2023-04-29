SHELL := /bin/bash

.PHONY: build
build:
	@echo "build auto-gpt"
	docker-compose build auto-gpt

.PHONY: run
run: build
	@echo "run auto-gpt"
	docker-compose run --rm auto-gpt

.PHONY: down
down:
	@echo "shut down auto-gpt"
	docker-compose down