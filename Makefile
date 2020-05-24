.PHONY: pre-commit
SHELL = /bin/bash -o pipefail
PROJECT_PATH ?= $(shell 'pwd')

DOCKER_IMAGE ?= loadimpact/k6:0.26.2
K6_NO_CONNECTION_REUSE ?= true
K6_USER_AGENT ?= "MyK6UserAgentString/1.0"

help:
	@grep -E '^[/\a-zA-Z0-9_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

init: ## Commit hooks setup
	@pre-commit install
	@pre-commit gc
	@pre-commit autoupdate

validate: ## Validate with pre-commit hooks
	@pre-commit run --all-files

change: ## Update changelog
	git-chglog -o CHANGELOG.md --next-tag `semtag final -s minor -o`

docker/inspect: ## Inspect container
	@docker run --rm -it \
		--entrypoint /bin/sh \
		$(DOCKER_IMAGE) /bin/sh

run/simulation: ## Gatling run scenario 'make sim=k6'
	@k6	run ./simulations/json.js

choose/simulation: ## Show all simulations `make choose/simulation sim=initial`
	@docker run --rm -i \
		-v ${PROJECT_PATH}/simulations/:/opt/ \
		$(DOCKER_IMAGE) \
		run - <./simulations/$(sim).js
