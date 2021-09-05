#!/usr/bin/env bash

# Deploys udacity-ml with kubernetes

dockerpath=jskline/udacity-ml

kubectl create deployment udacity-ml --image=docker.io/${dockerpath}:latest --port=80

kubectl get pods

POD_NAME=`kubectl get pods -o go-template --template '{{range .items}}{{.metadata.name}}{{"\n"}}{{end}}'`
kubectl port-forward $POD_NAME 8000:80
