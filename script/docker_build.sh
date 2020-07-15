#!/usr/bin/env bash
./gradlew clean build
docker build -t melon-config-server:latest .
docker container stop config-server
docker container rm config-server
docker run --ip 172.19.0.2 -p 8888:8888 --name config-server melon-config-server:latest