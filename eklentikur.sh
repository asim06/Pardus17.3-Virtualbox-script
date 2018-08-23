#!/bin/bash
#Virtual box misafir eklentisi kurulumu
#Virtual box Aygıtlar menüsünden Misafir Eklentileri CD Kalını yerleştir yapılmalı
#Asım MISIRLI
sudo apt install linux-headers-amd64 linux-headers-4.9.0-6-amd64
sudo apt install build-essential module-assistant
sudo cp -r  /media/cdrom0 /home
sudo chmod 755 /home/cdrom0/VBoxLinuxAdditions.run
sudo /home/cdrom0/./VBoxLinuxAdditions.run
