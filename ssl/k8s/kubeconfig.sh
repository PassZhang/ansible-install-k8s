kubectl config set-cluster kubernetes \
  --server=https://192.168.25.223:6443 \
  --embed-certs=true \
  --certificate-authority=ca.pem \
  --kubeconfig=config
kubectl config set-credentials cluster-admin \
  --certificate-authority=ca.pem \
  --embed-certs=true \
  --client-key=admin-key.pem \
  --client-certificate=admin.pem \
  --kubeconfig=config
kubectl config set-context default --cluster=kubernetes --user=cluster-admin --kubeconfig=config
kubectl config use-context default --kubeconfig=config
