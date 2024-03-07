OPENTOFU = $(DOCKER_COMPOSE_RUN) opentofu
OPENTOFU_SHELL = $(DOCKER_COMPOSE_RUN) --entrypoint=/bin/sh opentofu

docker-opentofu-version: ## Show opentofu version
	$(OPENTOFU) --version

docker-opentofu-init: ## Initialize opentofu
	$(OPENTOFU) -chdir=opentf init

docker-opentofu-plan: ## Plan opentofu
	$(OPENTOFU) -chdir=opentf plan

docker-opentofu-apply: ## Apply opentofu
	$(OPENTOFU) -chdir=opentf apply -auto-approve

docker-opentofu-shell: ## Run opentofu shell
	$(OPENTOFU_SHELL)

