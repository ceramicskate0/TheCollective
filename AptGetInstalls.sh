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
pip install Beef -y
pip install hping3 -y
pip install powersploit -y
pip install routersploit -y
pip install nishang -y
pip install veil-catapult -y
pip install geany -y
pip install monodevelop -y
pip install remina -y
pip install freerdp-x11 -y
pip install socat -y
#pip install tor -y
pip install ibus && pip install ibus-unikey -y
pip install lynis -y
pip install lib32asound2 -y
pip install lib32z1 -y
pip install network-manager-gnome -y
pip install network-manager-openvpn -y
pip install network-manager-openvpn-gnome -y
pip install network-manager-pptp -y
pip install network-manager-pptp-gnome -y
pip install network-manager-strongswan -y
pip install network-manager-vpnc -y
pip install network-manager-vpnc-gnome -y
pip install unrar unace rar unrar p7zip zip unzip p7zip-full p7zip-rar file-roller -y
pip install gdebi -y
pip install deluge -y
pip install libssl-dev -y
pip install libpcap-dev -y
pip install libsqlite3-dev -y
pip install guake -y
pip install recstudio -y
pip install python-hachoir-parser -y
pip install catdoc -y
pip install hping3 -y
pip install gnome-tweak-tool -y
pip install gtk-recordmydesktop -y
pip install pinta -y
pip install libreoffice -y
pip install knotes -y
pip install nodejs -y
pip install geany -y
pip install monodevelop -y
pip install gtk-recordmydesktop -y
pip install pinta -y
pip install mitmf -y
pip install postfix -y
pip install mailutils -y
pip install crackmapexec -y
pip install libreoffice -y
pip install knotes -y
pip install remmina -y
pip install freerdp-x11 -y
pip install ldap-utils rwho rsh-client x11-apps finger -y 
pip install lbd automater arachni bully inguma sslsplit dumpzilla -y 
pip install owasp-mantra-ff recon-ng ridenum regripper jd-gui -y
pip install metagoofil -y 
pip install unicornscan enum4linux polenum -y 
pip install nfspy firmware-mod-kit wmis -y 
pip install unicornscan -y 
pip install openvas -y 
pip install hping3 -y 
pip install nipper-ng jsql oclgausscrack ghost-phisher uniscan -y 
pip install bleachbit -y 
pip install file-roller -y 
pip install htop -y 
pip install shellter -y 
pip install jboss-autopwn -y 
pip install wifite -y 
pip install fruitywifi -y
apt autoremove -y
apt-get clean
