.PHONY: help

restart: ## Soft restarts the application
	lando rebuild -y

start: ## Start the application
	lando start

hard-reset: ## Hard restarts the application (THIS IS DESTORY YOUR CURRENT CONTAINERS)
	lando destroy -y && lando start

dump-db: ## Dump target service database. Usage: [$ make dump-db service=<service> ]
	lando db-export --host $(service) ./data/$(service).sql

help: ## Show this help
	@grep -h '\s##\s' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'