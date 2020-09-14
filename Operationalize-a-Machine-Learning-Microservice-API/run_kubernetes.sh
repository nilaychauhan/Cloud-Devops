#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath=nilay16/udacityproject:v1

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run udacityproject --replicas=5 --image=${dockerpath} --port=80 app=udacityproject

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward udacityproject 8000:80
