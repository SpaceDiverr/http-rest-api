# note: call scripts from /scripts

.PHONY: build
build:
	go build -v ./cmd/apiserver

.DEFAULT_GOAL := build