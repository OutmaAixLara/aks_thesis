# Kubernetes Best Practices for AKS  
This repository demonstrates some best practices for deploying and securing Azure Kubernetes Service (AKS) clusters. It includes hands-on validation of tools like **Falco**, **KubeArmor**, **KEDA** and performance benchmarking of ingress controllers.

## Features
- AKS cluster hardening with Azure Policy and CIS benchmarks.
- Runtime security testing with Falco and KubeArmor.
- Dynamic scaling using KEDA (tested with MSSQL).
- Ingress controller performance analysis (Istio, Traefik, Cilium, Azure App Routing).

## Quick Start
1. **Prerequisites**:
   - Azure CLI (`az`)
   - Kubernetes CLI (`kubectl`)
   - Helm

2. **AKS Cluster Provisioning**:

   Please refer to `SmallEnv\SmallVMEnvironment.md` to spin up the AKS cluster.
