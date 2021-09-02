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

image:
	docker build -t ${IMAGE_NAME}:${VERSION} -f Dockerfile . \
	&& docker push ${IMAGE_NAME}:${VERSION}

.PHONY: image
