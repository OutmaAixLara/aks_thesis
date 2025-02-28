#!/bin/bash
set -e

# --- Variables ---
INGRESS_SERVICE="aks-istio-ingressgateway-external"
INGRESS_NAMESPACE="aks-istio-ingress"
BOOKINFO_DEPLOYMENT="productpage-v1"
BOOKINFO_NAMESPACE="default"
VIRTUALSERVICE_NAME="bookinfo-vs-external"

# --- Load test command ---
LOAD_TEST_CMD="C:\Users\mo-el\k8s\aks_thesis\aks_thesis\ingress-benchmark\hey\hey_windows_amd64"

# --- Get external IP ---
echo "Waiting for external IP of Istio Ingress Gateway..."
while true; do
    INGRESS_IP=$(kubectl get svc ${INGRESS_SERVICE} -n ${INGRESS_NAMESPACE} -o jsonpath='{.status.loadBalancer.ingress[0].ip}')
    if [ -n "$INGRESS_IP" ]; then
        break
    fi
    sleep 5
done

echo "Istio Ingress External IP: ${INGRESS_IP}"

# --- Baseline load test ---
echo "Starting baseline load test..."
${LOAD_TEST_CMD} -z 30s -q 10 -c 5 http://${INGRESS_IP}/productpage

# --- Baseline scale test ---
for i in {1..3}; do
    echo "Iteration ${i}: Scaling productpage deployment to 7 replicas..."
    kubectl scale deployment ${BOOKINFO_DEPLOYMENT} --replicas=7 -n ${BOOKINFO_NAMESPACE}
    sleep 30
    echo "Load test during scale-out..."
    ${LOAD_TEST_CMD} -z 30s -q 10 -c 5 http://${INGRESS_IP}/productpage

    echo "Scaling productpage deployment back to 5 replicas..."
    kubectl scale deployment ${BOOKINFO_DEPLOYMENT} --replicas=5 -n ${BOOKINFO_NAMESPACE}
    sleep 30
    echo "Load test during scale-in..."
    ${LOAD_TEST_CMD} -z 30s -q 10 -c 5 http://${INGRESS_IP}/productpage
done

# --- Configuration change test ---
echo "Starting configuration change tests on the VirtualService..."

# 1. Split traffic between v1 and v2
echo "Updating VirtualService to split traffic 50-50..."
kubectl patch virtualservice ${VIRTUALSERVICE_NAME} --type merge -p '{
  "spec": {
    "http": [
      {
        "match": [
          { "uri": { "exact": "/productpage" }},
          { "uri": { "prefix": "/static" }},
          { "uri": { "exact": "/login" }},
          { "uri": { "exact": "/logout" }},
          { "uri": { "prefix": "/api/v1/products" }}
        ],
        "route": [
          { "destination": { "host": "productpage", "subset": "v1" }, "weight": 50 },
          { "destination": { "host": "productpage", "subset": "v2" }, "weight": 50 }
        ]
      }
    ]
  }
}'

sleep 30
${LOAD_TEST_CMD} -z 30s -q 10 -c 5 http://${INGRESS_IP}/productpage

# 2. Revert traffic to v1
echo "Reverting VirtualService to send all traffic to v1..."
kubectl patch virtualservice ${VIRTUALSERVICE_NAME} --type merge -p '{
  "spec": {
    "http": [
      {
        "match": [
          { "uri": { "exact": "/productpage" }},
          { "uri": { "prefix": "/static" }},
          { "uri": { "exact": "/login" }},
          { "uri": { "exact": "/logout" }},
          { "uri": { "prefix": "/api/v1/products" }}
        ],
        "route": [
          { "destination": { "host": "productpage", "subset": "v1" }, "weight": 100 }
        ]
      }
    ]
  }
}'

sleep 30
${LOAD_TEST_CMD} -z 30s -q 10 -c 5 http://${INGRESS_IP}/productpage

echo "Benchmark completed."
