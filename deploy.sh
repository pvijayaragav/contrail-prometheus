#!/bin/bash

kubectl create ns monitoring
kubectl create -f clusterRole.yaml -n monitoring
kubectl create -f config-map.yaml -n monitoring
kubectl create -f prometheus-deployment.yaml -n monitoring
kubectl create -f prometheus-service.yaml -n monitoring
kubectl create -f node-exporter-ds.yaml -n monitoring
kubectl create -f node-exporter-service.yaml -n monitoring
kubectl create -f grafana-deployment.yaml -n monitoring
kubectl create -f grafana-svc.yaml -n monitoring
kubectl create configmap grafana-import-dashboards -n monitoring --from-file=grafana-import-dashboards-configmap -o json --dry-run | kubectl apply -f - -n monitoring
