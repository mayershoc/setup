#! /bin/bash

# Installs ROS noetic desktop full. For more details, see http://wiki.ros.org/noetic/Installation/Ubuntu
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
sudo apt-key adv --keyserver 'hkp://keyserver.ubuntu.com:80' --recv-key C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654

sudo apt update
sudo apt install -y ros-noetic-desktop #-full

# Setup alias for workspace sourcing
echo '
# ROS alias for workspace sourcing
alias ros="source /opt/ros/noetic/setup.bash"' >> ~/.bashrc

# Install ROS workspace tools
sudo apt install -y python3-rosdep python3-rosinstall python3-rosinstall-generator python3-wstool build-essential python3-osrf-pycommon python3-catkin-tools

# Init rosdep
sudo rosdep init
rosdep update
