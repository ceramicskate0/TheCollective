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
apt-get install -y metasploit-framework
apt-get update --fix-missing
apt-get -f install
apt-get install -y  --reinstall gnome-control-center --fix-missing
apt-get install -y  beef 
apt-get install -y  hping3 
apt-get install -y  powersploit 
apt-get install -y  routersploit 
apt-get install -y  nishang 
apt-get install -y  veil-catapult 
apt-get install -y  geany 
apt-get install -y  monodevelop 
apt-get install -y  remina 
apt-get install -y  freerdp-x11 
apt-get install -y  socat 
#apt-get install -y  tor 
apt-get install -y  ibus
apt-get install -y  ibus-unikey 
apt-get install -y  lynis 
apt-get install -y  lib32asound2 
apt-get install -y  lib32z1 
apt-get install -y  network-manager-gnome 
apt-get install -y  network-manager-openvpn 
apt-get install -y  network-manager-openvpn-gnome 
apt-get install -y  network-manager-pptp 
apt-get install -y  network-manager-pptp-gnome 
apt-get install -y  network-manager-strongswan 
apt-get install -y  network-manager-vpnc 
apt-get install -y  network-manager-vpnc-gnome 
apt-get install -y  unrar unace rar unrar p7zip zip unzip p7zip-full p7zip-rar file-roller 
apt-get install -y  gdebi 
apt-get install -y  deluge 
apt-get install -y  libssl-dev 
apt-get install -y  libpcap-dev 
apt-get install -y  libsqlite3-dev 
apt-get install -y  guake 
apt-get install -y  recstudio 
apt-get install -y  python-hachoir-parser 
apt-get install -y  catdoc 
apt-get install -y  hping3 
apt-get install -y  gnome-tweak-tool 
apt-get install -y  gtk-recordmydesktop 
apt-get install -y  pinta 
apt-get install -y  libreoffice 
apt-get install -y  knotes 
apt-get install -y  nodejs 
apt-get install -y  geany 
apt-get install -y  monodevelop 
apt-get install -y  gtk-recordmydesktop 
apt-get install -y  pinta 
apt-get install -y  mitmf 
apt-get install -y  postfix 
apt-get install -y  mailutils 
apt-get install -y  crackmapexec 
apt-get install -y  libreoffice 
apt-get install -y  knotes 
apt-get install -y  remmina 
apt-get install -y  freerdp-x11 
apt-get install -y  ldap-utils rwho rsh-client x11-apps finger  
apt-get install -y  lbd automater arachni bully inguma sslsplit dumpzilla  
apt-get install -y  owasp-mantra-ff recon-ng ridenum regripper jd-gui 
apt-get install -y  metagoofil  
apt-get install -y  unicornscan enum4linux polenum  
apt-get install -y  nfspy firmware-mod-kit wmis  
apt-get install -y  unicornscan  
apt-get install -y  openvas  
apt-get install -y  hping3  
apt-get install -y  nipper-ng jsql oclgausscrack ghost-phisher uniscan  
apt-get install -y  bleachbit  
apt-get install -y  file-roller  
apt-get install -y  htop  
apt-get install -y  shellter  
apt-get install -y  jboss-autopwn  
apt-get install -y  wifite  
apt-get install -y  fruitywifi 
apt autoremove -y
apt-get clean
./install.py
