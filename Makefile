.PHONY: help

restart: ## Soft restarts the application
	lando rebuild -y

start: ## Start the application
	lando start

hard_reset: ## Hard restarts the application (THIS IS DESTORY YOUR CURRENT CONTAINERS)
	lando destroy -y && lando start

help: ## Show this help
	@grep -h '\s##\s' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'