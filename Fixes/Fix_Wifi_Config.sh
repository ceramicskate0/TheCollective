#!/bin/bash
#----------------Fix wireless Interface issue--------------------------------
echo "Fixing Wifi issue"
cd /etc/network/
echo "#Wireless Interface setup by install script"
echo "#auto wlan0">>interfaces
echo "#iface wlan0 inet manual">>interfaces
echo "#iface wlan0 inet static">>interfaces
echo "#wpa-ssid AP_NAME">>interfaces
echo "#wpa-key-mgmt WPA-PSK">>interfaces
echo "Fixed wireless config issue, might have to reboot to get it to work."
#----------------Fix Interface--------------------------------
