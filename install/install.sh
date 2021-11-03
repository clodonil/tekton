#!/bin/bash

kubectl apply --filename https://storage.googleapis.com/tekton-releases/pipeline/latest/release.yaml
kubectl apply --filename https://github.com/tektoncd/dashboard/releases/latest/download/tekton-dashboard-release.yaml

kubectl get pods --namespace tekton-pipelines --watch
kubectl --namespace tekton-pipelines port-forward svc/tekton-dashboard 9097:9097 &