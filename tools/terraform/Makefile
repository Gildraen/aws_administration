TERRAFORM = $(DOCKER_COMPOSE_RUN) terraform
TERRAFORM_SHELL = $(DOCKER_COMPOSE_RUN) --entrypoint=/bin/sh terraform

docker-terraform-version: ## Show terraform version
	$(TERRAFORM) version

docker-terraform-shell: ## Run terraform shell
	$(TERRAFORM_SHELL)

docker-terraform-init: ## Initialize based on main.tf
	$(TERRAFORM) -chdir=terraform init 

docker-terraform-plan: ## Plan terraform
	$(TERRAFORM) -chdir=terraform plan