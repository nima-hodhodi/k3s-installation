#!/bin/bash

sudo apt update -y
sudo apt install cowsay -y
cowsay k3s installation by "Nima Hodhodi"
sudo apt install -y curl wget
curl -sfL https://get.k3s.io | sh -

mkdir ~/.kube
sudo cp /etc/rancher/k3s/k3s.yaml ~/.kube/config
sudo chown $USER ~/.kube/config
sudo chmod 600 ~/.kube/config
export KUBECONFIG=~/.kube/config
