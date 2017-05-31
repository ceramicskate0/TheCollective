#!/usr/bin/python
import os

os.system("cd ..")
os.system("rm -rf YAKSR")
os.system("git clone https://github.com/ceramicskate0/YAKSR")
os.system("cd YAKSR")        
os.system("chmod +777 install.py")
os.system("./install.py")
