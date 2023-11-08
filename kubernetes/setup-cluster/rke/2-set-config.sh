cp kube_config_cluster.yml kubeconfig
export KUBECONFIG=$(pwd)/kubeconfig
kubectl get nodes
