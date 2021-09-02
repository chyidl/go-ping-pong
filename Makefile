USER 		:= 	$(shell whoami)
GIT_TAG		:=  $(shell git describe --tags)
GIT_COMMIT 	:= 	$(shell git rev-parse --short HEAD)
VERSION 	:=  $(shell git describe --tags --always)
BUILD_AT 	:= 	$(shell date +%FT%T)

IMAGE_NAME=chyiyaqing/go-ping-pong

# GOBIN > GOPATH > INSTALLDIR
GOBIN 	:= 	$(shell echo ${GOBIN} 	| cut -d':' -f1)
GOPATH 	:=  $(shell echo $(GOPATH) 	| cut -d':' -f1)
BIN 	:= 	""

amd64:
	# AMD64
	docker build --build-arg ARCH=amd64/ \
		-t ${IMAGE_NAME}:${VERSION}-amd64 -f Dockerfile . \
	&& docker push ${IMAGE_NAME}:${VERSION}-amd64

arm32:
	# ARM32 V7
	docker build --build-arg ARCH=arm32v7/ \
		-t ${IMAGE_NAME}:{VERSION}-arm32v7 -f Dockerfile . \
	&& docker push ${IMAGE_NAME}:${VERSION}-arm32v7

arm64:
	# ARM64 V8
	docker build --build-arg ARCH=arm64v8/ \
		-t ${IMAGE_NAME}:{VERSION}-arm64v8 -f Dockerfile . \
	&& docker push ${IMAGE_NAME}:{VERSION}-arm64v8

image: amd64 arm32 arm64

buildx:
	docker buildx build \
		--push \
		--platform linux/arm/v7,linux/arm64/v8,linux/amd64 \ 
		--tag ${IMAGE_NAME}:${VERSION} .

.PHONY: image amd64 arm32 arm64 buildx
