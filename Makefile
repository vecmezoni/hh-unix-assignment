.PHONY: all

all: lint test

lint:
	command -v shellcheck >/dev/null 2>&1 || (echo "shellcheck is required" && exit 1)
	shellcheck **/*.sh
test:
	cd tests
	for test in tests/*.sh; do bash "$$test" || exit 1; done
