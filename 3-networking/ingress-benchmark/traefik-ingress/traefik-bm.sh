#!/bin/bash
set -e

INGRESS_SERVICE="traefik"              
INGRESS_NAMESPACE="default"            
BOOKINFO_DEPLOYMENT="productpage-v1"   
BOOKINFO_NAMESPACE="default"           
INGRESS_NAME="gateway"                 

LOAD_TEST_CMD="C:\Users\mo-el\k8s\aks_thesis\aks_thesis\ingress-benchmark\hey\hey_windows_amd64"

while true; do
    INGRESS_IP=$(kubectl get svc ${INGRESS_SERVICE} -n ${INGRESS_NAMESPACE} -o jsonpath='{.status.loadBalancer.ingress[0].ip}')
    if [ -n "$INGRESS_IP" ]; then
        break
    fi
    sleep 5
done
echo "Traefik Ingress External IP: ${INGRESS_IP}"


echo "Baseline load test..."
${LOAD_TEST_CMD} -z 30s -q 10 -c 5 http://${INGRESS_IP}/productpage

for i in {1..3}; do
    echo "Iteration ${i}: Scaling ${BOOKINFO_DEPLOYMENT} to 7 replicas..."
    kubectl scale deployment ${BOOKINFO_DEPLOYMENT} --replicas=7 -n ${BOOKINFO_NAMESPACE}
    kubectl rollout status deployment/${BOOKINFO_DEPLOYMENT} -n ${BOOKINFO_NAMESPACE}
    sleep 30
    echo "Load test during scale-out..."
    ${LOAD_TEST_CMD} -z 30s -q 10 -c 5 http://${INGRESS_IP}/productpage

    echo "Scaling ${BOOKINFO_DEPLOYMENT} back to 5 replicas..."
    kubectl scale deployment ${BOOKINFO_DEPLOYMENT} --replicas=5 -n ${BOOKINFO_NAMESPACE}
    kubectl rollout status deployment/${BOOKINFO_DEPLOYMENT} -n ${BOOKINFO_NAMESPACE}
    sleep 30
    echo "Load test during scale-in..."
    ${LOAD_TEST_CMD} -z 30s -q 10 -c 5 http://${INGRESS_IP}/productpage
done

echo "Benchmark completed."
