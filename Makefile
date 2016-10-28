PROJECT       ?= flippa/beanstalkd
TAG           ?= v1.10

IMAGE = $(PROJECT):$(TAG)
LATEST = $(PROJECT):latest

.PHONY: build
build:
	docker build --rm -t $(IMAGE) .
	docker tag $(IMAGE) $(LATEST)

.PHONY: push
push:
	docker push $(IMAGE)
	docker push $(LATEST)
