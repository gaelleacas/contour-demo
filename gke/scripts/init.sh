#!/usr/bin/env bash
#ingressroute:
kubectl delete ingressroute lego lego-blog -n lego
kubectl delete ingressroute playmo playmo-blog -n playmo
kubectl delete ingressroute root-santa -n santa

#service:
kubectl delete svc lego-v1 lego-v2 lego-blog lego-route -n lego
kubectl delete svc playmo-v1 playmo-v2 playmo-blog -n playmo
kubectl delete svc santa-v1 santa-v2 santa-acme santa-ws -n santa

#Deploy
kubectl delete deploy lego-v1 lego-route lego-v2 lego-blog -n lego
kubectl delete deploy playmo-v1 playmo-v2 playmo-blog -n playmo
kubectl delete deploy santa-v1 santa-v2 santa-acme santa-ws -n santa
