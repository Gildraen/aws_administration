DOCKER_COMPOSE = docker compose
DOCKER_COMPOSE_RUN = $(DOCKER_COMPOSE) run --service-ports
DOCKER_COMPOSE_EXEC = $(DOCKER_COMPOSE) exec
DOCKER_COMPOSE_UP = $(DOCKER_COMPOSE) up
DOCKER_COMPOSE_DOWN = $(DOCKER_COMPOSE) down

docker-build:
	$(DOCKER_COMPOSE) build --no-cache
