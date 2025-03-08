helm repo add fairwinds-stable https://charts.fairwinds.com/stable
helm upgrade --install polaris fairwinds-stable/polaris --namespace demo --create-namespace
kubectl port-forward --namespace demo svc/polaris-dashboard 8080:80



![alt text](polaris-overview.png)
![alt text](insecure-context-pod.png)

![alt text](bad-nginx.png)
![alt text](good-nginx.png)

![alt text](polaris-cli-audit.png)