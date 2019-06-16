PHONY: styles build

all: build

build: styles
	hugo

styles:
	cd themes/ip; gulp scss