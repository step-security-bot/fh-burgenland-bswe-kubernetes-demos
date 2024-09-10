#!/bin/bash
set -eou pipefail

helm repo add argo https://argoproj.github.io/argo-helm
helm install -n argocd --create-namespace -f values.yml argocd argo/argo-cd
helm install -n argocd -f values-apps.yml argocd-apps argo/argocd-apps

# to expose argocd via url: minikube service -n argocd argocd-server --url

# after syncing wordpress
# to expose wordpress open in a new terminal: minikube tunnel
