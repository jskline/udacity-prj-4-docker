#!/usr/bin/env bash

dokerpath=jskline/udacity-ml

docker build -t $dockerpath .

docker image ls

docker run -p 8000:80 ${dockerpath}:latest
