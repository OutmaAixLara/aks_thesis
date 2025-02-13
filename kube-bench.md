
## Connect to the AKS nodes
    
    # Create debugger pod
    kubectl debug node/<node hostname> -it --image=mcr.microsoft.com/cbl-mariner/busybox:2.0

    # Start kubectl session
    chroot /host

    # exit the session
    exit

    # Delete debugger pod
    kubectl delete pod node-debugger-aks-nodepool1-<xxxxxxxx>-<xxxxxxxxxx>-<xxxxx>


 ## Install kube-bench

    KUBE_BENCH_VERSION=0.10.1

    curl -L https://github.com/aquasecurity/kube-bench/releases/download/v${KUBE_BENCH_VERSION}/kube-bench_${KUBE_BENCH_VERSION}_linux_amd64.deb -o kube-bench_${KUBE_BENCH_VERSION}_linux_amd64.deb

    sudo apt install ./kube-bench_${KUBE_BENCH_VERSION}_linux_amd64.deb -f

 ## Run kube-bench
    kube-bench

 ## Result of the tests

![alt text](image.png)
![alt text](image-1.png)

== Remediations policies ==
5.1.1 Identify all clusterrolebindings to the cluster-admin role. Check if they are used and
if they need this role or if they could use a role with fewer privileges.
Where possible, first bind users to a lower privileged role and then remove the
clusterrolebinding to the cluster-admin role :
kubectl delete clusterrolebinding [name]

5.1.2 Where possible, remove get, list and watch access to secret objects in the cluster.

5.1.3 Where possible replace any use of wildcards in clusterroles and roles with specific
objects or actions.

5.1.4 Where possible, remove create access to pod objects in the cluster.

5.1.5 Create explicit service accounts wherever a Kubernetes workload requires specific access
to the Kubernetes API server.
Modify the configuration of each default service account to include this value
automountServiceAccountToken: false

5.1.6 Modify the definition of pods and service accounts which do not need to mount service
account tokens to disable it.

5.2.1 Create a PSP as described in the Kubernetes documentation, ensuring that
the .spec.privileged field is omitted or set to false.

5.2.2 Create a PSP as described in the Kubernetes documentation, ensuring that the
.spec.hostPID field is omitted or set to false.

5.2.3 Create a PSP as described in the Kubernetes documentation, ensuring that the
.spec.hostIPC field is omitted or set to false.

5.2.4 Create a PSP as described in the Kubernetes documentation, ensuring that the
.spec.hostNetwork field is omitted or set to false.

5.2.5 Create a PSP as described in the Kubernetes documentation, ensuring that the
.spec.allowPrivilegeEscalation field is omitted or set to false.

5.2.6 Create a PSP as described in the Kubernetes documentation, ensuring that the
.spec.runAsUser.rule is set to either MustRunAsNonRoot or MustRunAs with the range of
UIDs not including 0.

5.2.7 Create a PSP as described in the Kubernetes documentation, ensuring that the
.spec.requiredDropCapabilities is set to include either NET_RAW or ALL.

5.2.8 Ensure that allowedCapabilities is not present in PSPs for the cluster unless
it is set to an empty array.

5.2.9 Review the use of capabilites in applications running on your cluster. Where a namespace
contains applicaions which do not require any Linux capabities to operate consider adding
a PSP which forbids the admission of containers which do not drop all capabilities.

5.3.1 If the CNI plugin in use does not support network policies, consideration should be given to
making use of a different plugin, or finding an alternate mechanism for restricting traffic
in the Kubernetes cluster.

5.3.2 Follow the documentation and create NetworkPolicy objects as you need them.

5.4.1 if possible, rewrite application code to read secrets from mounted secret files, rather than
from environment variables.

5.4.2 Refer to the secrets management options offered by your cloud provider or a third-party
secrets management solution.

5.5.1 Follow the Kubernetes documentation and setup image provenance.

5.7.1 Follow the documentation and create namespaces for objects in your deployment as you need
them.

5.7.2 Seccomp is an alpha feature currently. By default, all alpha features are disabled. So, you
would need to enable alpha features in the apiserver by passing "--feature-
gates=AllAlpha=true" argument.
Edit the /etc/kubernetes/apiserver file on the master node and set the KUBE_API_ARGS
parameter to "--feature-gates=AllAlpha=true"
KUBE_API_ARGS="--feature-gates=AllAlpha=true"
Based on your system, restart the kube-apiserver service. For example:
systemctl restart kube-apiserver.service
Use annotations to enable the docker/default seccomp profile in your pod definitions. An
example is as below:
apiVersion: v1
kind: Pod
metadata:
  name: trustworthy-pod
  annotations:
    seccomp.security.alpha.kubernetes.io/pod: docker/default
spec:
  containers:
    - name: trustworthy-container
      image: sotrustworthy:latest
      image: sotrustworthy:latest

5.7.3 Follow the Kubernetes documentation and apply security contexts to your pods. For a
suggested list of security contexts, you may refer to the CIS Security Benchmark for Docker
Containers.

5.7.4 Ensure that namespaces are created to allow for appropriate segregation of Kubernetes
resources and that all new resources are created in a specific namespace.


5.7.4 Ensure that namespaces are created to allow for appropriate segregation of Kubernetes
resources and that all new resources are created in a specific namespace.


resources and that all new resources are created in a specific namespace.





== Summary policies ==
0 checks PASS
0 checks FAIL
24 checks WARN
0 checks INFO
0 checks INFO

== Summary total ==
23 checks PASS
0 checks FAIL
24 checks WARN
0 checks INFO
0 checks INFO

== Summary total ==
23 checks PASS
0 checks FAIL
24 checks WARN
0 checks INFO

== Summary total ==
23 checks PASS
0 checks INFO

0 checks INFO
0 checks INFO
0 checks INFO

== Summary total ==
23 checks PASS
0 checks FAIL
0 checks INFO

== Summary total ==
23 checks PASS
0 checks INFO

== Summary total ==
0 checks INFO

0 checks INFO
0 checks INFO

== Summary total ==
23 checks PASS
0 checks FAIL
0 checks INFO

== Summary total ==
23 checks PASS
0 checks FAIL
24 checks WARN
0 checks INFO

== Summary total ==
23 checks PASS
0 checks FAIL
0 checks INFO

0 checks INFO
0 checks INFO

== Summary total ==
23 checks PASS
0 checks FAIL
24 checks WARN
0 checks INFO