PROJECT       ?= flippa/beanstalkd
TAG           ?= v1.10
STACK_ENV     ?= staging

IMAGE = $(PROJECT):$(TAG)
LATEST = $(PROJECT):latest

.PHONY: build
build:
	docker build --rm -t $(IMAGE) .
	docker tag -f $(IMAGE) $(LATEST)

.PHONY: push
push:
	docker push $(IMAGE)
	docker push $(LATEST)
