    subscription="Sectra One Cloud Test - Kubernetes 1"
    RESOURCE_GROUP="K8S-Test-Small-Env"
    CLUSTER="myaks"

## Enable application routing addon
az aks approuting enable --resource-group $RESOURCE_GROUP --name $CLUSTER
az aks approuting disable --resource-group $RESOURCE_GROUP --name $CLUSTER

az aks update --resource-group $RESOURCE_GROUP --name $CLUSTER --kube-proxy-config kube-proxy.json