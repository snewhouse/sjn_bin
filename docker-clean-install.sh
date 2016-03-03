#!/bin/bash
sudo apt-get install lxc wget bsdtar curl
sudo apt-get install linux-image-extra-$(uname -r)
sudo modprobe aufs

# install the latest version of Docker with curl:
function install_docker_latest(){
  curl -sSL https://get.docker.com/ | sh
  sudo usermod -aG docker ubuntu
}

#Uninstallation
function remove_docker_complete(){
  sudo apt-get purge docker-engine
  sudo apt-get autoremove --purge docker-engine
  sudo rm -rf /var/lib/docker
}
