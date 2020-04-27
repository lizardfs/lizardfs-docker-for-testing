BASE_IMAGE ?= "ubuntu:20.04"

.PHONY:
build:
	BASE_IMAGE=$(BASE_IMAGE) docker-compose build
