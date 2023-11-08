kind export kubeconfig --name mylab99 --kubeconfig ./kubeconfig.cluster.yaml
cp ./kubeconfig.cluster.yaml kubeconfig
export KUBECONFIG=$(pwd)/kubeconfig
source <(kubectl completion bash)
kubectl get nodes
