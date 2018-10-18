#!/usr/bin/env bash
set -x

docker build -t potree-dev:latest .
docker tag potree-dev:latest 106.15.103.158:5000/potree-dev:latest

docker push 106.15.103.158:5000/potree-dev:latest

docker images --no-trunc | grep '<none>' | awk '{ print $3 }' | xargs -r docker rmi
docker images
