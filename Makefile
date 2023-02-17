include .env

help:
	@echo "Commands:"
	@echo "  clean       Remove all dangling Images and stopped Containers"
	@echo "  build       Build an Image from a Dockerfile"
	@echo "  start       Build and force start a Container"
	@echo "  stop        Force remove a Container"
clean:
	docker image prune -f
	docker container prune -f
build:
	docker build -t ${IMAGE_NAME} .
start:
	$(MAKE) build
	docker container rm --force ${CONTAINER_NAME}
	docker container run --name ${CONTAINER_NAME} --publish ${PUBLISH_PORT} ${IMAGE_NAME}
stop:
	docker container rm --force ${CONTAINER_NAME}
