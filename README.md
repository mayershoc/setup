# WSL-CUDA-DOCKER-ROS-SETUP
Some helper scripts to install CUDA, Docker, Nvidia Container Toolkit and ROS Noetic for usage in a WSL2-Ubuntu20.04 VM. Tested on a MSI GS66 UG, running Windows 10 Home Insider Build 21354.

# Prerequesites
Before installing everything in Ubuntu, make sure to setup your Windows machine correctly:
1. Install latest builds from [Microsoft Windows Insider Program](https://docs.nvidia.com/cuda/wsl-user-guide/index.html#installing-wip). 
2. Install [Nvidia WSL Drivers](https://docs.nvidia.com/cuda/wsl-user-guide/index.html#installing-nvidia-drivers)
3. Install [Windows Subsystem for Linux 2 (WSL)](https://docs.microsoft.com/en-us/windows/wsl/install-win10). Your Linux distribution of choice is **Ubuntu-20.04**.

Optional:
1. Install [VcXsrv](https://sourceforge.net/projects/vcxsrv/) for programm visualization. After installation, you can run the xserver using [this](config.xlaunch) configuration. When prompted for network access, make sure to allow both, private and public access (TODO: Unsecure. Is there a better way?).
2. Install [VS Code for WSL2](https://code.visualstudio.com/blogs/2019/09/03/wsl2) as your code editor. Besides VS Code already being an awesome editor, its integration with WSL2 makes it superior to any other editor.
3. Install [Windows Terminal](https://docs.microsoft.com/en-us/windows/terminal/get-started)

# Setting up Ubuntu-20.04
Some convenience scripts for installation. For details, see the links to the original ressources:
1. Clone this repository in your Ubuntu-20.04 environment running in WSL2.
2. Install [CUDA Toolkit](https://docs.nvidia.com/cuda/wsl-user-guide/index.html#running-cuda):

    `bash install_cuda_toolkit.sh`

    **NOTE:** Due to an [issue](https://github.com/microsoft/WSL/issues/6773), the GPU passthrough is not working in the Windows 10 preview build 21354.

3. Install [Docker](https://docs.docker.com/engine/install/ubuntu/):

    `bash install_docker.sh`

4. Install [Nvidia Container Toolkit](https://docs.nvidia.com/cuda/wsl-user-guide/index.html#setting-containers):

    `bash install_nvidia_container.sh`

5. Install [ROS Noetic](http://wiki.ros.org/noetic/Installation/Ubuntu): 

    `bash install_ros.sh`

6. Finally, setup your .bashrc file: 

    `bash setup_bashrc.sh`



