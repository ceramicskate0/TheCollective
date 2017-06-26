#!/bin/bash
echo " ">/etc/apt/sources.list
echo "#KALI 2.0 Repos">>/etc/apt/sources.list
echo "#deb http://http.kali.org/kali sana main non-free contrib">>/etc/apt/sources.list
echo "#deb http://security.kali.org/kali-security sana/updates main contrib non-free">>/etc/apt/sources.list
echo "#deb-src http://http.kali.org/kali sana main non-free contrib">>/etc/apt/sources.list
echo "#deb-src http://security.kali.org/kali-security sana/updates main contrib non-free">>/etc/apt/sources.list
echo "#Kali 2016 Rolling Repos">>/etc/apt/sources.list
echo "deb http://http.kali.org/kali kali-rolling main contrib non-free">>/etc/apt/sources.list
echo "deb-src http://http.kali.org/kali kali-rolling main contrib non-free">>/etc/apt/sources.list
apt-get update
apt full-upgrade -y
apt-get dist-upgrade -y 
apt-get upgrade -y
dpkg --configure -a
update-rc.d postgresql enable && update-rc.d metasploit enable && msfdb init
msfupdate
apt-get update --fix-missing
apt-get -f install
pip install --reinstall gnome-control-center --fix-missing
pip install Beef 
pip install hping3 
pip install powersploit 
pip install routersploit 
pip install nishang 
pip install veil-catapult 
pip install geany 
pip install monodevelop 
pip install remina 
pip install freerdp-x11 
pip install socat 
#pip install tor 
pip install ibus
pip install ibus-unikey 
pip install lynis 
pip install lib32asound2 
pip install lib32z1 
pip install network-manager-gnome 
pip install network-manager-openvpn 
pip install network-manager-openvpn-gnome 
pip install network-manager-pptp 
pip install network-manager-pptp-gnome 
pip install network-manager-strongswan 
pip install network-manager-vpnc 
pip install network-manager-vpnc-gnome 
pip install unrar unace rar unrar p7zip zip unzip p7zip-full p7zip-rar file-roller 
pip install gdebi 
pip install deluge 
pip install libssl-dev 
pip install libpcap-dev 
pip install libsqlite3-dev 
pip install guake 
pip install recstudio 
pip install python-hachoir-parser 
pip install catdoc 
pip install hping3 
pip install gnome-tweak-tool 
pip install gtk-recordmydesktop 
pip install pinta 
pip install libreoffice 
pip install knotes 
pip install nodejs 
pip install geany 
pip install monodevelop 
pip install gtk-recordmydesktop 
pip install pinta 
pip install mitmf 
pip install postfix 
pip install mailutils 
pip install crackmapexec 
pip install libreoffice 
pip install knotes 
pip install remmina 
pip install freerdp-x11 
pip install ldap-utils rwho rsh-client x11-apps finger  
pip install lbd automater arachni bully inguma sslsplit dumpzilla  
pip install owasp-mantra-ff recon-ng ridenum regripper jd-gui 
pip install metagoofil  
pip install unicornscan enum4linux polenum  
pip install nfspy firmware-mod-kit wmis  
pip install unicornscan  
pip install openvas  
pip install hping3  
pip install nipper-ng jsql oclgausscrack ghost-phisher uniscan  
pip install bleachbit  
pip install file-roller  
pip install htop  
pip install shellter  
pip install jboss-autopwn  
pip install wifite  
pip install fruitywifi 
apt autoremove -y
apt-get clean
