PHONY: styles build

all: build

build: styles
	hugo

styles: gulp
	cd themes/ip; npm i; gulp scss

gulp:
	npm i -g gulp