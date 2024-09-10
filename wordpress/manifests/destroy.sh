#!/bin/bash
set -eou pipefail

kubectl delete -f 006-wordpress-svc.yml
kubectl delete -f 005-wordpress-deploy.yml
kubectl delete -f 004-wordpress-pvc.yml
kubectl delete -f 003-mysql-svc.yml
kubectl delete -f 002-mysql-sts.yml
kubectl delete -f 001-mysql-secret.yml
kubectl delete -f 000-namespace.yml
