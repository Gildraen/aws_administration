include docker.mk
include local.mk
include tools/Makefile

export UID=$(shell id -u)
export GID=$(shell id -g)	

.DEFAULT_GOAL := doc
doc: ## List commands available in Makefile
	@echo "Available commands:"
	@awk -F ':.*?## ' '/^[a-zA-Z0-9_-]+:.*?##/{ \
		printf "\033[32m%-30s\033[0m %s\n", $$1, $$2 \
	}' $(MAKEFILE_LIST) | sed -e 's/\[32m##/[33m/'
.PHONY: doc