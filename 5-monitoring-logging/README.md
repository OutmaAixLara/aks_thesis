## Install Prometheus and Grafana

    helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
    helm repo update

## Install kube-prometheus-stack Helm chart
    helm install prometheus \
    prometheus-community/kube-prometheus-stack \
    --namespace monitoring \
    --create-namespace

## Verify that all the pods are running
    kubectl --namespace monitoring get pods -l "release=prometheus"

## Get Grafana 'admin' user password
    kubectl --namespace monitoring get secrets prometheus-grafana -o jsonpath="{.data.admin-password}" | base64 -d ; echo

## Access Grafana local instance
    export POD_NAME=$(kubectl --namespace monitoring get pod -l "app.kubernetes.io/name=grafana,app.kubernetes.io/instance=prometheus" -oname)

    kubectl --namespace monitoring port-forward $POD_NAME 3000


## Access the Prometheus Query UI through Port-forwarding
    kubectl port-forward --namespace monitoring svc/prometheus-kube-prometheus-prometheus 9090

## Open in the browser
    http://localhost:9090 

 

## Access Grafana UI through Port-forwarding
    kubectl port-forward --namespace monitoring svc/prometheus-grafana 8080:80

## Open in the browser
    http://localhost:8080

    # The username is admin and the password is prom-operator
