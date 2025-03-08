## Install Traefik Ingress chart 
helm repo add stable https://charts.helm.sh/stable
helm repo update
helm install traefik-ingress stable/traefik -n kube-system --values traefik-values.yaml --set acme.email=Mohamed.Outmani@alumni.fh-aachen.de

## Wait for the external IP to be assigned by watching the traefik service (CTRL+C to exit)
kubectl get svc traefik -n kube-system -w

## Wait for the traefik pod to be 'Running' (CTRL+C to exit)
kubectl get pod -n kube-system -w

