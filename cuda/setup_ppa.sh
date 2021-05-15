#! /bin/bash
# Setup cuda ppa
distro="$(. /etc/os-release;echo $ID$VERSION_ID | sed 's/\.//g')"

wget https://developer.download.nvidia.com/compute/cuda/repos/$distro/x86_64/cuda-ubuntu2004.pin
sudo mv cuda-$distro.pin /etc/apt/preferences.d/cuda-repository-pin-600
sudo apt-key adv --fetch-keys https://developer.download.nvidia.com/compute/cuda/repos/$distro/x86_64/7fa2af80.pub
sudo add-apt-repository "deb https://developer.download.nvidia.com/compute/cuda/repos/$distro/x86_64/ /"

sudo apt-get update


# Post installation step
echo '
# CUDA Toolkit
export PATH=/usr/local/cuda/bin${PATH:+:${PATH}}' >> ~/.bashrc
