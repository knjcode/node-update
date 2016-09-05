DOCKER_IMAGE_VERSION=4.5.0
DOCKER_IMAGE_NAME=knjcode/node-update
DOCKER_IMAGE_TAGNAME=$(DOCKER_IMAGE_NAME):$(DOCKER_IMAGE_VERSION)
DOCKER_IMAGE_TAG_LTS=$(DOCKER_IMAGE_NAME):lts

default: build

build:
	docker build -t $(DOCKER_IMAGE_TAGNAME) .
	docker build -t $(DOCKER_IMAGE_TAG_LTS) .

push:
	docker push $(DOCKER_IMAGE_TAGNAME)
	docker push $(DOCKER_IMAGE_TAG_LTS)

test:
	docker run --rm $(DOCKER_IMAGE_TAGNAME) /bin/echo "Success."

version:
	docker run --rm $(DOCKER_IMAGE_TAGNAME) node --version
	docker run --rm $(DOCKER_IMAGE_TAGNAME) npm --version
