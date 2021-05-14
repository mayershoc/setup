#! /bin/bash
# This script sets up my usual way of using virtualenv with python. Environments are stored under ~/code/venvs/ and can be activated by using <venv myenv>

sudo apt update
sudo apt install -y python3-virtualenv

mkdir -p ~/code/venvs
cd ~/code/venvs

echo '
# Activate virtual environment
function venv () { source ~/code/venvs/$1/bin/activate; }' >> ~/.bashrc
