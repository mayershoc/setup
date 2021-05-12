#! /bin/bash

# Setting up cuda toolkit
distro=$(. /etc/os-release;echo $ID$VERSION_ID)
sudo apt-key adv --fetch-keys http://developer.download.nvidia.com/compute/cuda/repos/$distro/x86_64/7fa2af80.pub

sudo sh -c 'echo "deb http://developer.download.nvidia.com/compute/cuda/repos/$distro/x86_64 /" > /etc/apt/sources.list.d/cuda.list'

sudo apt-get update

sudo apt install -y cuda-toolkit-11-0


