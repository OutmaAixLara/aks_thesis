    subscription="Sectra One Cloud Test - Kubernetes 1"
    RESOURCE_GROUP="K8S-Test-Small-Env"
    CLUSTER="myaks"

## Deploy the sample app
    kubectl apply -f https://raw.githubusercontent.com/istio/istio/release-1.18/samples/bookinfo/platform/kube/bookinfo.yaml

## Enable external Istio ingress 
    az aks mesh enable-ingress-gateway --resource-group $RESOURCE_GROUP --name $CLUSTER --ingress-gateway-type external

## Check the service mapped to the ingress gateway
    kubectl get svc aks-istio-ingressgateway-external -n aks-istio-ingress

