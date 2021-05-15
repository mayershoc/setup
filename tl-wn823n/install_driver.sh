#! /bin/bash
# This script installs the latest drivers for the tp link tl-wn823n wireless usb adapter

sudo apt install update
sudo apt install -y dkms

# Download driver source
git clone https://github.com/Mange/rtl8192eu-linux-driver.git
cd rtl8192eu-linux-driver

# Build kernel module
sudo dkms add .
sudo dkms install rtl8192eu/1.0
sudo modprobe 8192eu

# Blacklist rtl8xxxu kernel module
echo "blacklist rtl8xxxu" | sudo tee /etc/modprobe.d/rtl8xxxu.conf
echo -e "8192eu\n\nloop" | sudo tee /etc/modules
echo "options 8192eu rtw_power_mgnt=0 rtw_enusbss=0" | sudo tee /etc/modprobe.d/8192eu.conf
sudo update-grub; sudo update-initramfs -u;

echo "Please restart now and check if the driver is being picked up after restart using:"
echo "lshw -C network"
echo "The driver should state: driver=8192eu"
