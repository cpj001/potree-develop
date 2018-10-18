#!/usr/bin/env bash

set -x
docker rm -f server_potree_dev
docker pull 106.15.103.158:5000/potree-dev:latest
docker run -d --name server_potree_dev -p 6010:1234 \
106.15.103.158:5000/potree-dev:latest
docker ps