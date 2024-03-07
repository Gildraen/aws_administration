AWS = $(DOCKER_COMPOSE_RUN) aws

docker-aws-configure: ## Configure global aws
	$(AWS) configure

docker-aws-configure-profile: ## Configure aws profile (profile=profile_name)
	$(AWS) configure --profile $(profile)
