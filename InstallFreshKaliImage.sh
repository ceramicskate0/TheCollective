#!/bin/bash
cd /etc/apt
#----------------Fix REPOS--------------------------------
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
echo "FIXED THE REPO SOURCE.LIST, AGAIN. Your Welcome!"
#----------------Fix wireless Interface issue--------------------------------
#echo "Fixing Wifi issue"
#cd /etc/network/
#echo "#Wireless Interface setup by install script"
#echo "#auto wlan0">>interfaces
#echo "#iface wlan0 inet manual">>interfaces
#echo "#iface wlan0 inet static">>interfaceshttps://github.com/vysec/ps1-toolkithttps://github.com/vysec/ps1-toolkit
#echo "#wpa-ssid AP_NAME">>interfaces
#echo "#wpa-key-mgmt WPA-PSK">>interfaces
#echo "Fixed wireless config issue, might have to reboot to get it to work."
#----------------Fix Interface--------------------------------
echo "Starting to grab updates (BUT NOT UPGRADE DUE TO THE UPGRADES WILL BREAK ARMITAGE AT THIS TIME)"
cd /
apt-get update
apt full-upgrade -y
apt-get dist-upgrade -y 
apt-get upgrade -y
apt-get -f install
#----------------INSTALL REPOS--------------------------------
echo "Installing good packages to have"
apt-get install geany -y 
apt-get install mitmf -y
apt-get install remmina -y
apt-get install fruitywifi -y
apt-get -y install bleachbit
apt-get -y install goldendict
apt-get -y install gtk-recordmydesktop
apt-get -y install pinta
apt-get -y install ibus && apt-get -y install ibus-unikey
apt-get -y install libreoffice
apt-get -y install knotes
apt-get -y install network-manager-gnome
apt-get -y install network-manager-openvpn
apt-get -y install network-manager-openvpn-gnome
apt-get -y install network-manager-pptp
apt-get -y install network-manager-pptp-gnome
apt-get -y install network-manager-strongswan
apt-get -y install network-manager-vpnc
apt-get -y install network-manager-vpnc-gnome
apt-get -y install unrar unace rar unrar p7zip zip unzip p7zip-full p7zip-rar file-roller
apt-get -y install gdebi &>/dev/nul
apt-get -y install deluge &>/dev/null
apt-get -y install ldap-utils rwho rsh-client x11-apps finger
apt-get -y install nipper-ng jsql oclgausscrack ghost-phisher uniscan -y
apt-get -y install lbd automater arachni bully inguma sslsplit dumpzilla -y 
apt-get -y install owasp-mantra-ff recon-ng ridenum regripper jd-gui -y
apt-get -y install freerdp-x11 -y
apt-get -y install libssl-dev -y
apt-get -y install libpcap-dev -y
apt-get -y install libsqlite3-dev -y
apt-get -y install metagoofil
apt-get -y install passing-the-hash unicornscan winexe
apt-get -y install unicornscan enum4linux polenum 
apt-get -y install nfspy firmware-mod-kit wmis
apt-get -y install Beef
apt-get -y install veil-catapult
apt-get -y install unicornscan
apt-get -y install backdoor-factory
apt-get -y install shellter
apt-get -y install jboss-autopwn
apt-get -y install eyewitness
apt-get -y install wifite
apt-get -y install mimikatz
apt-get -y install openvas
apt-get -y install guake
apt-get -y install recstudio
apt-get -y install python-hachoir-parser
apt-get -y install catdoc
apt-get -y install unoconv
apt-get -y install flex
apt-get -y install scrub
apt-get -y install hping3
apt-get -y install gnome-tweak-tool
apt-get -y install phython-elixer
apt-get -y install ldap-utils rwho rsh-client x11-apps finger
apt-get -y install commix
apt-get -y install powersploit
apt-get -y install nishang
apt-get -y install mimikatz
apt-get -y install routersploit
#---------------Tor the use to be anon browser
#apt-get -y install tor
#-----------------------------START GETTING FROM GITHUB------------------------
echo "Getting clones from Github"
cd /root/Desktop
mkdir ToolBox
git clone https://github.com/CeramicSkate0/Kali-Scripts
cd /root/Desktop/ToolBox
#git clone https://github.com/trustedsec/ptf
git clone https://github.com/dannagle/packetsender
git clone https://github.com/vysec/ps1-toolkit
git clone https://github.com/az0ne/browser-backdoor
git clone https://github.com/adaptivethreat/KeeThief
git clone https://github.com/TryCatchHCF/Cloakify
git clone https://github.com/Hood3dRob1n/CVE-2016-3714
git clone https://github.com/LucaBongiorni/CVE-2016-0051
git clone https://github.com/CeramicSkate0/Wrapper-For-MITMF
git clone https://github.com/PowerShellEmpire/Empire
git clone https://github.com/PyroTek3/PowerShell-AD-Recon
git clone https://github.com/nidem/kerberoast
git clone https://github.com/michenriksen/gitrob
git clone https://github.com/byt3bl33d3r/gcat.git
git clone https://github.com/jekyc/wig.git 
git clone https://github.com/GDSSecurity/Windows-Exploit-Suggester.git 
git clone https://github.com/MarioVilas/shellcode_tools.git 
git clone https://github.com/dotcppfile/DAws.git 
git clone https://github.com/dotcppfile/Serbot.git 
git clone https://github.com/rfunix/Pompem.git 
git clone https://github.com/AlessandroZ/LaZagne.git 
git clone https://github.com/PenturaLabs/Linux_Exploit_Suggester.git 
git clone https://github.com/0x90/bluetooth-arsenal
git clone https://github.com/rsmudge/cortana-scripts
git clone https://github.com/gentilkiwi/kekeo
git clone https://github.com/bidord/pykek
git clone https://github.com/leebaird/discover
git clone https://github.com/MooseDojo/praedasploit
git clone https://github.com/macubergeek/gitlist #more list of other kali repos
git clone https://github.com/stef/wireless-radar
git clone https://github.com/denandz/KeeFarce #ITS IN .NET :(
git clone https://github.com/RUB-NDS/TLS-Attacker
git clone https://github.com/realparisi/WMI_Monitor
git clone https://github.com/enigma0x3/Misc-PowerShell-Stuff
git clone https://github.com/RedBalloonShenanigans/MonitorDarkly
git clone https://github.com/0x3a/stargate
git clone https://github.com/lunixbochs/patchkit
git clone https://github.com/upgoingstar/datasploit
git clone https://github.com/0x90/lpe-arsenal
git clone https://github.com/adaptivethreat/BloodHound
git clone https://github.com/putterpanda/mimikittenz
git clone https://github.com/nardholio/cve-2016-0728
git clone https://github.com/ChrisTruncer/EyeWitness
git clone https://github.com/ChrisTruncer/Egress-Assess
git clone https://github.com/ChrisTruncer/WMIOps
git clone https://github.com/nccgroup/Winpayloads
git clone https://github.com/bartblaze/PHP-backdoors
git clone https://github.com/Hood3dRob1n/CVE-2016-3714
git clone https://github.com/iadgov/Secure-Host-Baseline
git clone https://github.com/Unode/firefox_decrypt
git clone https://github.com/Hood3dRob1n/JSRat-Py
git clone https://github.com/ahhh/malware_sources
git clone https://github.com/rezasp/vbscan
git clone https://github.com/byt3bl33d3r/scripts
git clone https://github.com/IMcPwn/browser-backdoor
git clone https://github.com/TryCatchHCF/Cloakify
git clone https://github.com/adaptivethreat/KeeThief
git clone https://github.com/vysec/ps1-toolkit
git clone https://github.com/az0ne/browser-backdoor
git clone https://github.com/1N3/HTTPoxyScan
git clone https://github.com/Crypt0s/FakeDns
git clone https://github.com/chango77747/AdEnumerator
git clone https://github.com/Raikia/CredNinja
git clone https://github.com/ispoleet/malWASH
git clone https://github.com/ispoleet/Network-Security
git clone https://github.com/ispoleet/malware
#---------------Prep sys for wifi---------------------------------------
wget http://didierstevens.com/files/software/oledump_V0_0_22.zip
#-----------------END GitList Repos to get more Repos---------------
git clone https://github.com/jshaw87/Cheatsheets
git clone https://github.com/jshaw87/Scripts
git clone https://github.com/ruped24/toriptables2
git clone https://github.com/nccgroup/metasploitavevasion.git 
#-------------Veil-----------
mkdir /root/Desktop/ToolBox/Veil
cd /root/Desktop/ToolBox/Veil
mkdir VeilInstaller
cd VeilInstaller
git clone https://github.com/Veil-Framework/Veil
cd ..
git clone https://github.com/Veil-Framework/Veil-Ordnance.git
git clone https://github.com/Veil-Framework/Veil-Catapult.git
cd Veil-Catapult && ./setup.sh
cd ..
git clone https://github.com/Veil-Framework/Veil-Pillage.git
cd Veil-Pillage && ./update.py
cd ..
git clone https://github.com/Veil-Framework/PowerTools.git
git clone https://github.com/Veil-Framework/Veil-Evasion.git
cd Veil-Evasion/setup && ./setup.sh
cd ..
#----------------install MANA wifi tools
cd /root/Desktop/ToolBox
git clone --depth 1 https://github.com/sensepost/mana
#cd mana
#git submodule init
#git submodule update
#make
#make install
#kali-install.sh
#-------------------------------------------------------------------------------
cd /root/Desktop/ToolBox
wget https://github.com/Top-Hat-Sec/thsosrtl/blob/master/VeePeeNee/VeePeeNee.sh
mv VeePeeNee.sh vpnbook.sh
chmod a+x vpnbook.sh
#-------------------------------------------------------------------------------
git clone https://github.com/byt3bl33d3r/pyobfuscate.git 
#python setup.py install
#---------------------------------Get OLE dependency for OLEDump--------------------------
#pip install -U olefile
#---------------------------------Get more goodys--------------------------
#echo "Now to Download Nessus and cobalt strike"
#iceweasel --new-tab https://www.tenable.com/products/nessus/select-your-operating-system https://www.cobaltstrike.com/download http://blog.didierstevens.com/my-software/
#-------------------FIX missing updates form installs and fix settings-----------------------------
apt-get update --fix-missing
apt-get -f install
apt-get install --reinstall gnome-control-center --fix-missing
apt autoremove -y
apt-get clean
#---------------------Setup and prep for metasploit------------------------------
/etc/init.d/postgresql start
/etc/init.d/network-manager start
msfdb init
msfupdate
#---------------Prep sys for wifi---------------------------------------
airmon-ng check kill
#---------------Reboot---------------------------------------
reboot now
