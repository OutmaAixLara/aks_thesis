helm repo add kubearmor https://kubearmor.github.io/charts

helm repo update kubearmor

helm upgrade --install kubearmor-operator kubearmor/kubearmor-operator -n kubearmor --create-namespace

kubectl apply -f https://raw.githubusercontent.com/kubearmor/KubeArmor/main/pkg/KubeArmorOperator/config/samples/sample-config.yml 




    