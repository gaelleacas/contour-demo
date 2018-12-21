#!/usr/bin/env bash
echo "http://localhost:6060/debug/dag"
# Port forward into the contour pod
CONTOUR_POD=$(kubectl -n heptio-contour get pod -l app=contour -o jsonpath='{.items[0].metadata.name}')
# Do the port forward to that pod
kubectl -n heptio-contour port-forward $CONTOUR_POD 6060
# Download and store the DAG in png format

