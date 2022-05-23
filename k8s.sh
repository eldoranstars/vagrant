#/bin/bash
# Set SELinux in permissive mode (effectively disabling it)
sudo setenforce 0
sudo sed -i 's/SELINUX=enabled/SELINUX=disabled/d' /etc/selinux/config
# Lastly, we need to disable SWAP to enable the kubelet to work properly
sudo sed -i '/swap/d' /etc/fstab
sudo swapoff -a
# Install k8s repo
cat <<EOF | sudo tee /etc/yum.repos.d/kubernetes.repo
[kubernetes]
name=Kubernetes
baseurl=https://packages.cloud.google.com/yum/repos/kubernetes-el7-x86_64
enabled=1
gpgcheck=0
repo_gpgcheck=0
EOF
# Prepare services
sudo yum install kubelet kubeadm kubectl docker -y
sudo systemctl enable docker
sudo systemctl start docker
sudo systemctl enable kubelet
sudo systemctl start kubelet
echo 'source <(kubectl completion bash)' >>~/.bashrc
echo 'source <(oc completion bash)' >>~/.bashrc
echo 'source <(kubectl completion zsh)' >>~/.zshrc
echo 'source <(oc completion zsh | sed -e 's/compdef _kubectl kubectl/compdef _oc oc/g' )'  >>~/.zshrc
# VMCloud
echo "# In order to set /proc/sys/net/bridge/bridge-nf-call-iptables" >> /etc/sysctl.conf
echo "net.bridge.bridge-nf-call-iptables = 1" >> /etc/sysctl.conf
sudo sysctl -p