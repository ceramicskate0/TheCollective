#!/bin/bash
cd /etc/apt
echo "Fixing Source lists"
echo " ">sources.list
echo "#KALI 2.0 Repos">>sources.list
echo "#deb http://http.kali.org/kali sana main non-free contrib">>sources.list
echo "#deb http://security.kali.org/kali-security sana/updates main contrib non-free">>sources.list
echo "#deb-src http://http.kali.org/kali sana main non-free contrib">>sources.list
echo "#deb-src http://security.kali.org/kali-security sana/updates main contrib non-free">>sources.list
echo "#Kali 2016 Rolling Repos">>sources.list
echo "deb http://http.kali.org/kali kali-rolling main contrib non-free">>sources.list
echo "deb-src http://http.kali.org/kali kali-rolling main contrib non-free">>sources.list
echo "FIXED SOURCE.LIST"
