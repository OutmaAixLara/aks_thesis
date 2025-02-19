## Install Prometheus and Grafana

helm repo add prometheus-community https://prometheus-community.github.io/helm-charts

helm repo update
Install the Helm chart into a namespace called monitoring, which will be created automatically.

helm install prometheus \
  prometheus-community/kube-prometheus-stack \
  --namespace monitoring \
  --create-namespace

# Verify that all the pods are running
kubectl --namespace monitoring get pods -l "release=prometheus"



 

## Access the Prometheus Query UI through Port-forwarding
kubectl port-forward --namespace monitoring svc/prometheus-kube-prometheus-prometheus 9090

# Open in the browser
http://localhost:9090 

 

## Access Grafana UI through Port-forwarding
kubectl port-forward --namespace monitoring svc/prometheus-grafana 8080:80

# Open in the browser
http://localhost:8080
 

# The username is admin and the password is prom-operator
