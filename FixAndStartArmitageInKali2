#!/bin/bash
echo "REMOVE DIR for ARMITAGE"
rm -r /usr/share/armitage
echo "CLEANING OLD ARMITAGE OFF SYSTEM"
apt-get clean
apt-get autoclean
apt-get remove armitage -y
apt-get update
echo "CD TO DOWNLOADS"
cd /root/Downloads
echo "DOWNLOADING ARMITAGE"
wget http://www.fastandeasyhacking.com/download/armitage150813.tgz
echo "UNPACKING ARMITAGE"
tar -xf armitage150813.tgz
echo "DELETE AMITAGE.tgz"
rm -r armitage150813.tgz
echo "COPY ARMITAGE to /USR/SHARE/"
cp -r armitage /usr/share/armitage
echo "STARTING POSTGRESQL"
/etc/init.d/postgresql start
echo "FIX MSFDB"
msfdb delete
msfdb init
msfdb start
apt-get -y install armitage
echo "READY TO TRY ARMITAGE......"

