#!/usr/bin/env bash

# Step 1:
image="{github_username}/duckhunt:1.0"

# Step 2
ubectl create deployment duckhunt --image=$image

sleep 20

# Step 3:
kubectl get pods --all-namespaces

# Step 4:

kubectl expose deployment duckhunt --type="NodePort" --port=80

kubectl port-forward deployment/duckhunt 8081:80