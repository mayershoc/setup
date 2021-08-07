#! /bin/bash
# This script install basic tools useful for a desktop usage after installing Ubuntu minimal

# Git
sudo apt install -y git
# VLC media player
sudo apt install -y vlc
# Libreoffice suite
sudo apt install -y libreoffice-gnome libreoffice libreoffice-l10n-de
# Disk usage analyzer
sudo apt install -y baobab
# Image manipulation
sudo apt install -y shotwell
# Remote desktop client
sudo apt install -y remmina
# tmux, terminal multiplexer
sudo apt install -y tmux
# python package manager
sudo apt install -y python3-pip
# vs code
sudo snap install --classic code
# silversearch, command line search tool
sudo apt install -y silversearcher-ag
# GIF recorder
sudo apt install -y peek
# Spotify
sudo snap install spotify
# Todoist, task manager
sudo snap install todoist
# Balen etcher, formatting tool
curl -1sLf 'https://dl.cloudsmith.io/public/balena/etcher/setup.deb.sh' | sudo -E bash
sudo apt update
sudo apt install balena-etcher-electron
