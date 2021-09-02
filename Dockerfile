# syntax=docker/dockerfile:1

FROM golang:1.16-alpine

ENV GOPROXY=https://goproxy.cn,direct

# This instructs Docker to use this directory as the default destination for all subsequent commands
WORKDIR /app

# Copy the go.mod and go.sum file into working directory /app
# Download necessary Go modules
COPY go.mod ./
COPY go.sum ./
RUN go mod download

COPY *.go ./

# compile application and located in the root of the filesystem of the image
RUN go build -o /go-ping-pong

EXPOSE 8080

CMD [ "/go-ping-pong" ]
