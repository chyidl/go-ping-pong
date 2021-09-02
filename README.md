# Golang Ping-Pong service By Docker
> A simple Go server/microservice example

  - Includes a multi-stage Dockerfile, which actually is a good example of how to build Go binaries for production releases.
  - Has functional tests for application's business requirements with proper isolation between tests using
  - Has a CI pipeline using GitHub Actions to run functional tests in independent containers.
  - Has a CD pipeline using GitHub Actions to publish to Docker Hub.
