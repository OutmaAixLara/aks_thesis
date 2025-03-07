#!/bin/bash
set -e

INGRESS_SERVICE="cilium-gateway-my-gateway"         
INGRESS_NAMESPACE="default"               
BOOKINFO_DEPLOYMENT="productpage-v1"        
BOOKINFO_NAMESPACE="default"              
HTTPROUTE_NAME="http-app-1"   

LOAD_TEST_CMD="C:\Users\mo-el\k8s\aks_thesis\aks_thesis\ingress-benchmark\hey\hey_windows_amd64"

while true; do
    INGRESS_IP=$(kubectl get svc ${INGRESS_SERVICE} -n ${INGRESS_NAMESPACE} -o jsonpath='{.status.loadBalancer.ingress[0].ip}')
    if [ -n "$INGRESS_IP" ]; then
        break
    fi
    sleep 5
done
echo "Cilium GW External IP: ${INGRESS_IP}"

echo "Baseline load test"
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


echo "Split traffic 50%-50% between productpage-v1 and productpage-v2..."
kubectl patch httproute ${HTTPROUTE_NAME} -n ${BOOKINFO_NAMESPACE} --type merge -p '{
  "spec": {
    "rules": [{
      "backendRefs": [
        {"name": "productpage", "port": 9080, "weight": 50, "subset": "v1"},
        {"name": "productpage", "port": 9080, "weight": 50, "subset": "v2"}
      ]
    }]
  }
}'
sleep 30
echo "Load test with 50-50 traffic split..."
${LOAD_TEST_CMD} -z 30s -q 10 -c 5 http://${INGRESS_IP}/productpage

echo "Reverting HTTPRoute to send all traffic to productpage-v1..."
kubectl patch httproute ${HTTPROUTE_NAME} -n ${BOOKINFO_NAMESPACE} --type merge -p '{
  "spec": {
    "rules": [{
      "backendRefs": [
        {"name": "productpage", "port": 9080, "weight": 100, "subset": "v1"}
      ]
    }]
  }
}'
sleep 30
echo "Load test after reverting traffic..."
${LOAD_TEST_CMD} -z 30s -q 10 -c 5 http://${INGRESS_IP}/productpage

echo "Adding custom header to HTTPRoute..."
kubectl patch httproute ${HTTPROUTE_NAME} -n ${BOOKINFO_NAMESPACE} --type merge -p '{
  "spec": {
    "rules": [{
      "filters": [{
        "type": "RequestHeaderModifier",
        "requestHeaderModifier": {
          "add": {
            "X-Test": "hello"
          }
        }
      }],
      "backendRefs": [
        {"name": "productpage", "port": 9080, "weight": 100, "subset": "v1"}
      ]
    }]
  }
}'
sleep 30
echo "Load test with custom header added..."
${LOAD_TEST_CMD} -z 30s -q 10 -c 5 http://${INGRESS_IP}/productpage

echo "Reverting HTTPRoute.."
kubectl patch httproute ${HTTPROUTE_NAME} -n ${BOOKINFO_NAMESPACE} --type merge -p '{
  "spec": {
    "rules": [{
      "filters": []
    }]
  }
}'
sleep 30
echo "Load test after removing custom header..."
${LOAD_TEST_CMD} -z 30s -q 10 -c 5 http://${INGRESS_IP}/productpage

echo "Benchmark completed."

