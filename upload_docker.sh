#!/usr/bin/env bash
# This file uploads an image to Docker Hub
# Assumes that an image is built via `run_docker.sh`

dockerpath=jskline/udacity-ml

echo "Docker ID and Image: $dockerpath"
docker login --username=jskline

docker push ${dockerpath}:latest
