all: bench

.PHONY: deps
deps:
	go get -v -t -d ./...

.PHONY: bench
bench: deps
	go test -v -bench . -benchmem -run nothing ./...

