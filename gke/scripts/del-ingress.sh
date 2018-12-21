#!/usr/bin/env bash
kubectl delete ingress root-santa -n santa
kubectl delete ingress lego -n lego
kubectl delete ingress playmo  -n playmo

kubectl apply -f ../santa
kubectl apply -f ../lego
kubectl apply -f ../playmo
