## Install RabbitMQ
helm repo add bitnami https://charts.bitnami.com/bitnami
helm repo update
helm install rabbitmq --set auth.username=user --set auth.password=PASSWORD bitnami/rabbitmq --wait

# helm install my-release oci://registry-1.docker.io/bitnamicharts/rabbitmq

## Verify the installation
kubectl get pods -l app.kubernetes.io/name=rabbitmq
