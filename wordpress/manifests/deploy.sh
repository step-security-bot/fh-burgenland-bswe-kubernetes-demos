#!/bin/bash
set -eou pipefail

kubectl apply -f 000-namespace.yml
kubectl apply -f 001-mysql-secret.yml
kubectl apply -f 002-mysql-sts.yml
kubectl apply -f 003-mysql-svc.yml
kubectl apply -f 004-wordpress-pvc.yml
kubectl apply -f 005-wordpress-deploy.yml
kubectl apply -f 006-wordpress-svc.yml

# to expose wordpress open in a new terminal: minikube tunnel
