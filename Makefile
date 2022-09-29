MAKEFLAGS += --silent

all: build

## help: Prints a list of available build targets.
help:
	echo "Usage: make <OPTIONS> ... <TARGETS>"
	echo ""
	echo "Available targets are:"
	echo ''
	sed -n 's/^##//p' ${PWD}/Makefile | column -t -s ':' | sed -e 's/^/ /'
	echo
	echo "Targets run by default are: `sed -n 's/^all: //p' ./Makefile | sed -e 's/ /, /g' | sed -e 's/\(.*\), /\1, and /'`"

## build: Builds the 'k6' binary with the custom xk6-servus module.
build:
	xk6 build --with xk6-servus=.

## run: Runs just build k6 with the script.
run:
	./k6 run script.js

.PHONY: build