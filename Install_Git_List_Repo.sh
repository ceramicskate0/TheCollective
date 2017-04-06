#!/bin/bash
cd /root/Desktop/HackerTools/gitlist
chmod a+x @
chmod a+x gitlist.sh
chmod a+x wgetlist.sh
cp @ /root/Desktop/HackerTools
cp gitlist.sh /root/Desktop/HackerTools
cp wgetlist /root/Desktop/HackerTools
cd /root/Desktop/HackerTools
./@
./gitlist.sh
./wgetlist.sh
rm @
rm gitlist.sh
rm wgetlist.sh
