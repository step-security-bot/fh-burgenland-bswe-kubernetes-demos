#!/bin/bash
set -eou pipefail

helm delete -n wordpress-helm wordpress
kubectl delete ns wordpress-helm
