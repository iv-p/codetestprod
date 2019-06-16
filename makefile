PHONY: styles build

all: build

build: styles
	hugo

styles: scss-deps
	gulp scss

scss-deps:
	npm i -g gulp
	cd themes/ip; npm i;