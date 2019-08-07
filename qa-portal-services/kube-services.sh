#!/bin/bash

kubectl create -f core-api/deployment.yaml
kubectl create -f core-api/service.yaml

kubectl apply -f core-api/deployment.yaml
kubectl apply -f core-api/service.yaml

kubectl create -f self-reflection/deployment.yaml
kubectl create -f self-reflection/service.yaml

kubectl apply -f self-reflection/deployment.yaml
kubectl apply -f self-reflection/service.yaml

kubectl create -f user-api/deployment.yaml
kubectl create -f user-api/service.yaml

kubectl apply -f user-api/deployment.yaml
kubectl apply -f user-api/service.yaml
