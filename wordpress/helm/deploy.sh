#!/bin/bash
set -eou pipefail

helm install -n wordpress-helm --create-namespace -f values.yml wordpress oci://registry-1.docker.io/bitnamicharts/wordpress

# to expose wordpress open in a new terminal: minikube tunnel
