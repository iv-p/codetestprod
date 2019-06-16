PHONY: styles build

all: build

build: styles
	hugo

styles:
	cd themes/ip; npm i; gulp scss