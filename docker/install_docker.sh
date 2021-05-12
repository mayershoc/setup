#! /bin/bash

# Install docker. For details, see: https://docs.docker.com/engine/install/ubuntu/ 

sudo apt remove docker docker-engine docker.io containerd runc

sudo apt update
sudo apt install -y apt-transport-https ca-certificates curl gnupg lsb-release
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

echo \
  "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

sudo apt update
sudo apt -y install docker-ce docker-ce-cli containerd.io

sudo docker run hello-world

sudo service docker start
sudo systemctl enable docker

sudo groupadd docker
sudo usermod -aG docker ${USER}
