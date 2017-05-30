#!/usr/bin/python
import os

os.system("apt-get update")
os.system("apt-get upgrade -y")
currentdir=os.getcwd()
files = [x for x in os.listdir(currentdir+str("/Lists")) if x.endswith('.txt')]
if (os.path.isdir(str(currentdir)+"/ToolBox")) is False:
	os.makedirs(str(currentdir)+"/ToolBox")
os.system("cd "+str(currentdir)+ "/Lists")
for filename in files:
	print "--Starting work on "+str(filename)
	dirname= os.path.splitext(str(filename))[0]
	os.system("cd "+str(currentdir)+"/ToolBox/ && mkdir "+str(dirname))
	f=open(str(currentdir)+ "/Lists/"+str(filename))
	line=f.readline()
	while line:
		os.system("cd "+str(currentdir)+"/ToolBox/"+str(dirname) +" && "+line)
		line=f.readline()
	f.close()
