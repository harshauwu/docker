#/bin/bash

docker stop test-docker && docker rm test-docker
docker build -t test-docker --file Dockerfile .
docker run test-docker

