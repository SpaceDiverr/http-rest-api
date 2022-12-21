# NOTE: ALL SCRIPTS ARE CALLED FROM /scripts

.PHONY: build
build:
	make tidy;
	make format;
	go build -v ./cmd/apiserver


# removing vendor dir before run
# vendor dir shouldn't be seen in public
.PHONY: run
run:
	make;
	rm -rf vendor;
	./apiserver


# tests run preset
.PHONY: test
test: 
	go test -v -race -timeout 30s ./...;


# formatting all go files
.PHONY: format
format:
	./scripts/format.bash;


# creating vendor dir is inevitable because otherwise 'go mod tidy' 
# always throws error out of control
.PHONY: tidy
tidy:
	go mod vendor;
	go mod tidy


.DEFAULT_GOAL := build


