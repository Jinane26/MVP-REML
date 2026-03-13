#!/bin/bash

set -e

echo "Creating namespace"
kubectl create namespace awx || true

echo "Installing AWX operator"
kubectl apply -k github.com/ansible/awx-operator/config/default?ref=devel

echo "Deploying AWX instance"
kubectl apply -f k8s/awx-demo.yml -n awx

echo "Waiting for pods"
kubectl get pods -n awx
