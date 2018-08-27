#!/bin/bash
#Virtual box misafir eklentisi kurulumu
#Virtual box Aygıtlar menüsünden Misafir Eklentileri CD Kalını yerleştir yapılmalı
#Asım MISIRLI

# author: yunusem
# prepare for failsafe
set -e
# declare needed variables
kernel=$(uname -r)
mountpoint="/media/cdrom0"
defaultDevicePoint="/dev/sr0"

# mount existing cd
sudo mount $defaultDevicePoint $mountpoint
# update package manager cache
sudo apt update
# use dynamic kernel number incase it has been upgraded
sudo apt install -y linux-headers-$kernel build-essential module-assistant
# change directory to where media is mounted
cd $mountpoint
sudo /bin/bash VBoxLinuxAdditions.run
# Show successfull finish
echo "Bitti."
