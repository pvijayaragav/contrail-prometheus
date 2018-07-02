# kubernetes-prometheus
Configuration files for setting up prometheus monitoring on Kubernetes cluster.

You can find the full tutorial from here https://devopscube.com/setup-prometheus-monitoring-on-kubernetes/

•After bringing up your kubernetescluster with contrail
•gitclone https://github.com/pvijayaragav/contrail-prometheus.git
•Then do following :
•Kubectlcreate ns monitoring
•Kubectlcreate –f clusterRole.yaml–n monitoring
•Kubectlcreate –f prometheus-deployment.yaml–n monitoring
•Kubectlcreate –f prometheus-service.yaml–n monitoring
•Kubectlcreate –f config-map.yaml–n monitoring
•
•Now go to browser and access prometheususing nodeport
•Ex: http://<nodeip>:30000/
