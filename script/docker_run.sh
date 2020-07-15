#!/usr/bin/env bash
docker run --ip 172.19.0.2 -p 8888:8888 --name config-server melon-config-server:latest