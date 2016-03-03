#!/bin/bash
ifconfig eth0 down
ifconfig wlan0 down
ifconfig wlan1 down
macchanger wlan0 -r -b
macchanger wlan1 -r -b
macchanger eth0 -r -b
ifconfig eth0 up
ifconfig wlan0 up
ifconfig wlan1 up
