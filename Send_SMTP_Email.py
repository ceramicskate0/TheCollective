#!/usr/bin/python
import os

TARGET=raw_input("Enter Domain or IP or target Mail Server:")
From=raw_input("Enter From Address:")
To=raw_input("Enter To address:")
SUBJ=raw_input("Enter Email Subject:")
BODY=raw_input("Enter yEmail Body:")
File=raw_input("Do you want to attach file?{y/n}")

if (File=='y'):
  FilePath=raw_input("Enter Filepath with file:")
  FileName=raw_input("Enter Filename:")
  FileExt=raw_input("Enter File Extension:")
  TARGET=raw_input("Enter Target IP or Other way o find it:")

os.system("sleep 3")
os.system("echo 'MAIL FROM:"+From+"'")
os.system("sleep 3")
os.system("echo 'RCPT TO:"+To+"'")
os.system("sleep 3")
os.system("echo 'DATA'")
os.system("sleep 3")
os.system("echo 'SUBJECT: "+SUBJ+"'")
os.system("sleep 3")
os.system("echo ''")
os.system("echo '"+BODY+"'")
os.system("echo ''")
os.system("sleep 3")
if (File=='y'):
  os.system("echo 'To:"+To+"'")
  os.system("echo ''")
  os.system("echo 'MIME-Version: 1.0'")
  os.system("echo ''")
  os.system("echo 'Content-Type: text/"+FileExt+"; name="+FileName+"'")
  os.system("echo 'Content-Description: "+FileName+"'")
  os.system("echo 'Content-Type: Multipart/mixed'")
  os.system("echo ''")
  os.system("echo 'Content-Disposition: attachment; filename="+FilePath+"'")
  os.system("echo ''")
  os.system("echo 'Content-Transfer-Encoding: base64'")
  os.system("echo ''")
  os.system("sleep 3")
  os.system("echo ''")
  os.system("cat "+FilePath+" | base64")
  os.system("sleep 3")
  os.system("echo '.'")
  os.system("sleep 3")
  os.system("echo 'QUIT'")
            
os.system("telnet "+TARGET+" 25")
