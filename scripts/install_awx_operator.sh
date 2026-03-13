#!/bin/bash

# Install namespace
kubectl create namespace awx

# Deploy AWX Operator
kubectl apply -k github.com/ansible/awx-operator/config/default?ref=devel

# Deploy AWX instance
kubectl apply -f k8s/awx-demo.yml -n awx
