#!/bin/bash

#Enabling modules and drivers
echo "dtoverlay=dwc2" | sudo tee -a /boot/config.txt
echo "dwc2" | sudo tee -a /etc/modules
sudo echo "libcomposite" | sudo tee -a /etc/modules

#Configure the gadget
sudo touch /usr/bin/isticktoit_usb
sudo chmod +x /usr/bin/isticktoit_usb

sudo sed '$i/usr/bin/isticktoit_usb # libcomposite configuration' /etc/rc.local
