#!/bin/bash
#----------------Fix REPOS--------------------------------
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
cd /
apt-get update
apt full-upgrade -y
apt-get dist-upgrade -y 
apt-get upgrade -y
#----------------END UPDATES AND SETUP PREP FOR REPOS--------------------------------
clear
#----------------INSTALL TOOLS--------------------------------
echo "Installing packages"
cd /root/Desktop
mkdir ToolBox
cd /root/Desktop/ToolBox
#----------------ALL IN ONE TOOOLS--------------------------------
mkdir ALL_IN_ONE_TOOLS
cd /root/Desktop/ToolBox/ALL_IN_ONE_TOOLS
git clone https://github.com/trustedsec/ptf
git clone https://github.com/PowerShellMafia/PowerSploit
git clone https://github.com/MobSF/Mobile-Security-Framework-MobSF
git clone https://github.com/jaredhaight/PSAttack
git clone https://github.com/trustedsec/tap
git clone https://github.com/PowerShellEmpire/Empire
git clone https://github.com/dotcppfile/DAws.git 
git clone https://github.com/NECPC/RedCell-Kali
got clone https://github.com/samratashok/nishang
wget http://lazykali.googlecode.com/files/hackpack.tar.gz
tar zxvf hackpack.tar.gz
chmod +x /usr/bin/lazykali
#-----------------------------VEIL------------------------
apt-get -y install git
git clone https://github.com/Veil-Framework/Veil.git
cd /root/Desktop/ToolBox/ALL_IN_ONE_TOOLS/Veil
cd setup
chmod 777 setup.sh
./setup.sh -c
#----------------WORDLISTS--------------------------------
cd /root/Desktop/ToolBox
mkdir WORDLISTS
cd /root/Desktop/ToolBox/WORDLISTS
git clone https://github.com/Soldier4Life/Word-Lists
git clone https://github.com/decal/werdlists
git clone https://github.com/Soldier4Life/Word-Lists
#----------------PHISHING--------------------------------
cd /root/Desktop/ToolBox
mkdir PHISHERS
cd /root/Desktop/ToolBox/PHISHERS
git clone https://github.com/Raikia/FiercePhish
git clone https://github.com/t3ntman/Social-Engineering-Payloads
git clone https://github.com/ryhanson/phishery
git clone https://github.com/trustedsec/social-engineer-toolkit
#----------------SCRIPTS--------------------------------
cd /root/Desktop/ToolBox
mkdir RANDOM_SCRIPTS
cd /root/Desktop/ToolBox/RANDOM_SCRIPTS
git clone https://github.com/ChrisTruncer/PenTestScripts
git clone https://github.com/byt3bl33d3r/scripts
#----------------RECON TOOLS--------------------------------
cd /root/Desktop/ToolBox
mkdir RECON
cd /root/Desktop/ToolBox/RECON
apt-get -y install ldap-utils rwho rsh-client x11-apps finger
apt-get -y install lbd automater arachni bully inguma sslsplit dumpzilla -y 
apt-get -y install owasp-mantra-ff recon-ng ridenum regripper jd-gui -y
apt-get -y install metagoofil
apt-get -y install unicornscan enum4linux polenum
apt-get -y install nfspy firmware-mod-kit wmis
apt-get -y install unicornscan
apt-get -y install openvas
apt-get -y install hping3
apt-get -y install mitmf
apt-get -y install Beef
apt-get -y install nipper-ng jsql oclgausscrack ghost-phisher uniscan -y
git clone https://github.com/DataSploit/datasploit
git clone https://github.com/Raikia/Nmap-scripts
git clone https://github.com/rouabas/SQLInjectionScanner
git clone https://github.com/t3ntman/BrowserCheck
git clone https://github.com/chango77747/AdEnumerator
git clone https://github.com/stamparm/fetch-some-proxies
git clone https://github.com/PyroTek3/PowerShell-AD-Recon
git clone https://github.com/michenriksen/gitrob
git clone https://github.com/jekyc/wig.git 
git clone https://github.com/GDSSecurity/Windows-Exploit-Suggester.git 
git clone https://github.com/PenturaLabs/Linux_Exploit_Suggester.git 
git clone https://github.com/rfunix/Pompem.git 
git clone https://github.com/leebaird/discover
git clone https://github.com/adaptivethreat/BloodHound
git clone https://github.com/1N3/HTTPoxyScan
git clone https://github.com/Subterfuge-Framework/Subterfuge
git clone https://github.com/1N3/Sn1per
#----------------EXPLOIT TOOLS--------------------------------
cd /root/Desktop/ToolBox
mkdir EXPLOIT
cd /root/Desktop/ToolBox/EXPLOIT
apt-get -y install veil-catapult
apt-get -y install jboss-autopwn
apt-get -y install backdoor-factory
apt-get -y install shellter
apt-get -y install mimikatz
apt-get -y install eyewitness
apt-get -y install wifite
apt-get -y install powersploit
apt-get -y install routersploit
apt-get -y install nishang
git clone https://github.com/samratashok/Kautilya
git clone https://github.com/mattifestation/PowerWorm
git clone https://github.com/commixproject/commix
git clone https://github.com/infobyte/evilgrade
git clone https://github.com/enigma0x3/Powershell-Payload-Excel-Delivery
git clone https://github.com/enigma0x3/OutlookPersistence
git clone https://github.com/subTee/RegistrationFreeCOM
git clone https://github.com/PowerShellMafia/PowerSploit
git clone https://github.com/rastating/wordpress-exploit-framework
git clone https://github.com/reverse-shell/routersploit
git clone https://github.com/artkond/Invoke-Vnc
git clone https://github.com/jseidl/Babadook
git clone https://github.com/julienbedard/browsersploit
git clone https://github.com/CoalfireLabs/java_deserialization_exploits
git clone https://github.com/nettitude/xss_payloads
git clone https://github.com/az0ne/browser-backdoor
git clone https://github.com/Hood3dRob1n/CVE-2016-3714
git clone https://github.com/LucaBongiorni/CVE-2016-0051
git clone https://github.com/rezasp/vbscan
git clone https://github.com/secmob/BadKernel
git clone https://github.com/FuzzySecurity/HackSysTeam-PSKernelPwn
git clone https://github.com/fdiskyou/PSShell
git clone https://github.com/dotcppfile/Serbot.git 
git clone https://github.com/0x90/bluetooth-arsenal
git clone https://github.com/RUB-NDS/TLS-Attacker
git clone https://github.com/RedBalloonShenanigans/MonitorDarkly
git clone https://github.com/0x3a/stargate
git clone https://github.com/nardholio/cve-2016-0728
git clone https://github.com/nccgroup/Winpayloads
git clone https://github.com/bartblaze/PHP-backdoors
git clone https://github.com/Crypt0s/FakeDns
git clone https://github.com/IMcPwn/browser-backdoor
git clone https://github.com/ytisf/PyExfil
git clone https://github.com/AndreiAvadanei/Exploits
git clone https://github.com/FuzzySecurity/Capcom-Rootkit
git clone https://github.com/enigma0x3/Invoke-AltDSBackdoor
git clone https://github.com/1N3/IntruderPayloads
#----------------WIFI TOOLS--------------------------------
cd /root/Desktop/ToolBox/EXPLOIT
mkdir _WIFI
cd /root/Desktop/ToolBox/EXPLOIT/_WIFI
apt-get install fruitywifi -y
git clone https://github.com/stef/wireless-radar
#----------------POST_EXPLOIT--------------------------------
cd /root/Desktop/ToolBox
mkdir POST_EXPLOIT
cd /root/Desktop/ToolBox/POST_EXPLOIT
apt-get -y install passing-the-hash unicornscan winexe
git clone https://github.com/fdiskyou/PowerOPS
git clone https://github.com/xorrior/RandomPS-Scripts
git clone https://github.com/Mr-Un1k0d3r/RedTeamPowershellScripts
git clone https://github.com/nccgroup/vlan-hopping---frogger
git clone https://github.com/xairy/kernel-exploits
git clone https://github.com/securestate/syringe
git clone https://github.com/ChrisTruncer/EyeWitness
git clone https://github.com/putterpanda/mimikittenz
git clone https://github.com/vysec/ps1-toolkit
git clone https://github.com/mattifestation/WMI_Backdoor
git clone https://github.com/nccgroup/redsnarf
#----------------RATs--------------------------------
cd /root/Desktop/ToolBox/POST_EXPLOIT
mkdir _RATs
cd /root/Desktop/ToolBox/POST_EXPLOIT/_RATs
git clone https://github.com/t3ntman/CrunchRAT
git clone https://github.com/subTee/PoshRat
git clone https://github.com/Screetsec/TheFatRat
git clone https://github.com/Hood3dRob1n/JSRat-Py
apt-get -y install lib32asound2 &>/dev/null
apt-get -y install lib32z1 &>/dev/null
wget https://samsclass.info/123/proj10/Poison%20Ivy%202.3.2.7z
#----------------EXFILTRATION TOOLS--------------------------------
cd /root/Desktop/ToolBox/POST_EXPLOIT
mkdir _EXFILTRATION
cd /root/Desktop/ToolBox/POST_EXPLOIT/_EXFILTRATION
git clone https://github.com/ChrisTruncer/Egress-Assess
#----------------DATA TOOLS--------------------------------
cd /root/Desktop/ToolBox/POST_EXPLOIT
mkdir _DATA
cd /root/Desktop/ToolBox/POST_EXPLOIT/_DATA
git clone https://github.com/TryCatchHCF/Cloakify
#----------------PASSWORD TOOLS--------------------------------
cd /root/Desktop/ToolBox/POST_EXPLOIT
mkdir _Password_Dumpers
cd /root/Desktop/ToolBox/POST_EXPLOIT/_Password_Dumpers
git clone https://github.com/AlessandroZ/LaZagne
git clone https://github.com/az0ne/pacdoor
git clone https://github.com/Raikia/CredNinja
git clone https://github.com/adaptivethreat/KeeThief
git clone https://github.com/denandz/KeeFarce 
git clone https://github.com/Unode/firefox_decrypt
git clone https://github.com/brav0hax/easy-creds
git clone https://github.com/HarmJ0y/ASREPRoast
#----------------BYPASS UAC TOOLS--------------------------------
cd /root/Desktop/ToolBox/POST_EXPLOIT
mkdir _BYPASS_UAC
cd /root/Desktop/ToolBox/POST_EXPLOIT/_BYPASS_UAC
git clone https://github.com/hfiref0x/UACME
git clone https://github.com/enigma0x3/Misc-PowerShell-Stuff/Invoke-EventVwrBypass.ps1
git clone https://github.com/EmpireProject/Empire/data/module_source/privesc/Invoke-BypassUAC.ps1
#----------------ESCALATION--------------------------------
cd /root/Desktop/ToolBox/POST_EXPLOIT
mkdir _ESCALATION
cd /root/Desktop/ToolBox/POST_EXPLOIT/_ESCALATION
git clone https://github.com/foxglovesec/RottenPotato
git clone https://github.com/FuzzySecurity/Unix-PrivEsc
git clone https://github.com/0x90/lpe-arsenal
git clone https://github.com/1N3/PrivEsc
#----------------Enumeration--------------------------------
cd /root/Desktop/ToolBox/POST_EXPLOIT
mkdir _ENUMERATION
cd /root/Desktop/ToolBox/POST_EXPLOIT/_ENUMERATION
git clone https://github.com/Raikia/SMBCrunch
#----------------LATERAL MOVEMENT--------------------------------
cd /root/Desktop/ToolBox/POST_EXPLOIT
mkdir _Lateral_Movement
cd /root/Desktop/ToolBox/POST_EXPLOIT/_Lateral_Movement
git clone https://github.com/ChrisTruncer/WMIOps
git clone https://github.com/fdiskyou/PSShell
git clone https://github.com/nidem/kerberoast
git clone https://github.com/gentilkiwi/kekeo
git clone https://github.com/bidord/pykek
git clone https://github.com/brav0hax/smbexec.git
git clone https://github.com/byt3bl33d3r/CrackMapExec
#----------------MISC TOOLS--------------------------------
cd /root/Desktop/ToolBox
mkdir Misc
cd /root/Desktop/ToolBox/Misc
apt-get -y install bleachbit
apt-get -y install file-roller &>/dev/null
apt-get -y install htop &>/dev/null
git clone https://github.com/dannagle/packetsender
#----------------Obfuscation--------------------------------
cd /root/Desktop/ToolBox/Misc
mkdir _Obfuscation
cd /root/Desktop/ToolBox/Misc/_Obfuscation
git clone https://github.com/danielbohannon/Invoke-Obfuscation
git clone https://github.com/byt3bl33d3r/pyobfuscate.git 
ln -s /root/Desktop/ToolBox/Misc/_Obfuscation/VEIL/Tools/Evasion VEIL_EVASION
#VEIL Located in all in one tools
#----------------Shellcode--------------------------------
cd /root/Desktop/ToolBox/Misc
mkdir _Shellcode
cd /root/Desktop/ToolBox/Misc/_Shellcode
ln -s /root/Desktop/ToolBox/Misc/_Obfuscation/VEIL/Tools/Ordnance VEIL_Ordnance
git clone https://github.com/MarioVilas/shellcode_tools.git
#----------------Malware_Generaters--------------------------------
cd /root/Desktop/ToolBox/Misc
mkdir _Payload_Generaters
cd /root/Desktop/ToolBox/Misc/_Payload_Generaters
git clone https://github.com/enigma0x3/Generate-Macro
git clone https://github.com/EgeBalci/EGESPLOIT
git clone https://github.com/t3ntman/Social-Engineering-Payloads
git clone https://github.com/Mr-Un1k0d3r/MaliciousMacroGenerator
git clone https://github.com/Shellntel/luckystrike
git clone https://github.com/Gallopsled/pwntools
git clone https://github.com/khr0x40sh/MacroShop
git clone https://github.com/Shellntel/luckystrike
git clone https://github.com/ispoleet/malWASH
wget http://code.google.com/p/simple-ducky-payload-generator
git clone https://github.com/mubix/trigen
#----------------ANALYSIS--------------------------------
cd /root/Desktop/ToolBox/Misc
mkdir _ANALYSIS
cd /root/Desktop/ToolBox/Misc/_ANALYSIS
git clone https://github.com/mattifestation/PowerShellArsenal
git clone https://github.com/google/grr
git clone https://github.com/davehull/Kansa
git clone https://github.com/fireeye/flare-ida
git clone https://github.com/fireeye/pycommands
git clone https://github.com/fireeye/chopshop
git clone https://github.com/iadgov/Secure-Host-Baseline
git clone https://github.com/0xd4d/de4dot
git clone https://github.com/realparisi/WMI_Monitor
git clone https://github.com/mattifestation/PowerShellArsenal
#----------------REF_MATERIALS--------------------------------
cd /root/Desktop/ToolBox/Misc
mkdir _REF_MATERIALS
cd /root/Desktop/ToolBox/Misc/_REF_MATERIALS
git clone https://github.com/bluscreenofjeff/Red-Team-Infrastructure-Wiki
git clone https://github.com/uhub/awesome-shell
git clone https://github.com/swisskyrepo/PayloadsAllTheThings
git clone https://github.com/Aptive/penetration-testing-tools
git clone https://github.com/FuzzySecurity/DefCon24
git clone https://github.com/vysec/ps1-toolkit
git clone https://github.com/FuzzySecurity/CapstoneKeystone-PowerShell
git clone https://github.com/nebgnahz/awesome-iot-hacks
git clone https://github.com/kbandla/APTnotes
git clone https://github.com/rsmudge/cortana-scripts
git clone https://github.com/macubergeek/gitlist
git clone https://github.com/enigma0x3/Misc-PowerShell-Stuff
git clone https://github.com/ispoleet/Network-Security
git clone https://github.com/Yara-Rules/rules
git clone https://github.com/devttys0/littleblackbox
git clone https://github.com/jshaw87/Cheatsheets
git clone https://github.com/jshaw87/Scripts
git clone https://github.com/ruped24/toriptables2
git clone https://github.com/nccgroup/metasploitavevasion.git 
git clone https://github.com/enaqx/awesome-pentest
git clone https://github.com/HarmJ0y/CheatSheets
#---------------LIVE_MALWARE--------------------------------
cd /root/Desktop/ToolBox/Misc
mkdir _LIVE_MALWARE
cd /root/Desktop/ToolBox/Misc/_LIVE_MALWARE
git clone https://github.com/ahhh/malware_sources
git clone https://github.com/ispoleet/malware
git clone https://github.com/ytisf/theZoo
git clone https://github.com/fdiskyou/malware
git clone https://github.com/gasgas4/Leaked_Malware_SourceCode
#----------------REPORTING--------------------------------
cd /root/Desktop/ToolBox/Misc
mkdir _REPORTING
cd /root/Desktop/ToolBox/Misc/_REPORTING
apt-get -y install gtk-recordmydesktop
apt-get -y install pinta
apt-get -y install libreoffice
apt-get -y install knotes
#----------------DEV_IDE--------------------------------
cd /root/Desktop/ToolBox/Misc
mkdir _DEV_IDE
cd /root/Desktop/ToolBox/Misc/_DEV_IDE
apt-get install geany -y 
git clone https://github.com/fireeye/pycommands
cd /root/Desktop/ToolBox/Misc
#----------------RDP----------------------------------
mkdir _RDP
cd /root/Desktop/ToolBox/Misc/_RDP
apt-get -y install remmina
apt-get -y install freerdp-x11 -y
#----------------SYSTEM--------------------------------
cd /root/Desktop/ToolBox/Misc
mkdir _SYSTEM
cd /root/Desktop/ToolBox/Misc/_SYSTEM
git clone https://github.com/nicolargo/glances
pip install glances
git clone https://github.com/Und3rf10w/kali-anonsurf
#apt-get -y install tor
apt-get -y install ibus && apt-get -y install ibus-unikey
apt-get -y install lynis
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
apt-get -y install libssl-dev -y
apt-get -y install libpcap-dev -y
apt-get -y install libsqlite3-dev -y
apt-get -y install guake
apt-get -y install recstudio
apt-get -y install python-hachoir-parser
apt-get -y install catdoc
apt-get -y install hping3
apt-get -y install gnome-tweak-tool
#--------------------------------ALL INSTALLS AND DOWNLOADS DONE ---------------------------
clear
#--------------------------------START CLEAN UP --------------------------------------------
echo Starting CleanUp and post install work...
#---------------------------------Get more goodys--------------------------
#echo "Now to Download Nessus and cobalt strike"
#iceweasel --new-tab https://www.tenable.com/products/nessus/select-your-operating-system 
#iceweasel --new-tab https://www.cobaltstrike.com/download 
#iceweasel --new-tab http://blog.didierstevens.com/my-software/
#iceweasel --new-tab http://www.truesec.se/sakerhet/verktyg/saakerhet/gsecdump_v2.0b5
#iceweasel --new-tab http://www.tightvnc.com%2Fdownload.php&usg=AFQjCNFpS78TLf7UXzcnOkvPtINXVrFQrg
#iceweasel --new-tab https://www.winitor.com/features.html
#-------------------FIX Settings-----------------------------
update-rc.d postgresql enable && update-rc.d metasploit enable && msfdb init
#-------------------FIX missing updates form installs and fix settings-----------------------------
apt-get update --fix-missing
apt-get -f install
apt-get install --reinstall gnome-control-center --fix-missing
apt autoremove -y
apt-get clean
#---------------------Setup and prep for metasploit------------------------------
/etc/init.d/postgresql start
#/etc/init.d/network-manager start
msfupdate
#---------------Prep sys for wifi---------------------------------------
airmon-ng check kill
#---------------Reboot---------------------------------------
reboot now
