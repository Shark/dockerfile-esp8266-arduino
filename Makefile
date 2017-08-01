NAME = sh4rk/esp8266-arduino
VERSION = latest

.PHONY: all build

all: build

build:
	docker build -t $(NAME):$(VERSION) --force-rm .
