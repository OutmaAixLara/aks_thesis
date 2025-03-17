## Variables
    resourcegroup="K8S-Test-Small-Env"
    aks="myaks"

## Create System Admin's password
    kubectl create secret generic mssql --from-literal=MSSQL_SA_PASSWORD="jKrSF677TTRP"

## Create a storage class and persistent volume claim
    kubectl apply -f keda\mssql\storage.yaml

## Create the deployment
    kubectl apply -f keda\mssql\sql-deployment.yaml

## Create a sample app
    kubectl apply -f keda\mssql\app-deployment.yaml

## Create the scale object
    kubectl apply -f keda\mssql\scaleobject.yaml


## Connect with sqlcmd
    sqlcmd -S <External IP address> -U sa -P "<password>"
