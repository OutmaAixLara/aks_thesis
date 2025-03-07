## Variables
resourcegroup="K8S-Test-Small-Env"
aks="myaks"

## Enable the KEDA add-on on an existing AKS cluster
az aks update --resource-group $resourcegroup --name $aks --enable-keda

## Verify the KEDA add-on is installed
az aks show --resource-group $resourcegroup --name $aks --query "workloadAutoScalerProfile.keda.enabled"

## Verify KEDA is running
kubectl get pods -n kube-system


