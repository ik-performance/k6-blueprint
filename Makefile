.PHONY: pre-commit
SHELL = /bin/bash -o pipefail
DOCKER_IMAGE ?= gatling:local
PROJECT_PATH ?= $(shell 'pwd')

help:
	@grep -E '^[/\a-zA-Z0-9_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort -u | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

init: ## Commit hooks setup
	@pre-commit install
	@pre-commit gc
	@pre-commit autoupdate

validate: ## Validate with pre-commit hooks
	@pre-commit run --all-files

change: ## Update changelog
	git-chglog -o CHANGELOG.md --next-tag `semtag final -s minor -o`

choose/simulation: ## Show all simulations
	@echo "list simulations"
