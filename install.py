#!/usr/bin/python
import os

currentdir=os.getcwd()
os.chdir(str(currentdir))
os.system("chmod +777 AptGetInstalls.sh")
os.system("./AptGetInstalls.sh")
if (os.path.isdir(str(currentdir)+"/ToolBox")) is False:
	os.makedirs(str(currentdir)+"/ToolBox")
os.chdir(str(currentdir)+ "/Lists")
files = [x for x in os.listdir(currentdir+str("/Lists")) if x.endswith('.txt')]
for filename in files:
	print "--Starting work on "+str(filename)
	dirname= os.path.splitext(str(filename))[0]
	os.chdir(str(currentdir)+"/ToolBox/")
	if (os.path.isdir(str(currentdir)+"/ToolBox/")) is False:
			os.system("rm -rf "+str(dirname))
			os.makedirs(str(currentdir)+"/ToolBox")
	f=open(str(currentdir)+ "/Lists/"+str(filename))
	line=f.readline()
	os.chdir(str(currentdir)+"/ToolBox/"+str(dirname))
	while line:
		os.system(str(line))
		line=f.readline()
	f.close()
