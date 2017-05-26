#!/usr/bin/python
import os
os.system("clear")
os.system("airmon-ng check kill")
os.system("clear")
adapter=raw_input("Enter adapter name:")
os.system("airmon-ng start "+adapter)
os.system("airodump-ng "+adapter)
