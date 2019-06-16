PHONY: styles build scss-deps

all: build

build: styles
	hugo

styles: scss-deps
	cd themes/ip; gulp scss

scss-deps:
	npm i -g gulp
	cd themes/ip; npm i