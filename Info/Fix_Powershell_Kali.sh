#!/bin/bash
wget https://github.com/PowerShell/PowerShell/blob/master/docs/installation/linux.md

# Install prerequisites
apt-get install libunwind8 libicu55
wget http://security.debian.org/debian-security/pool/updates/main/o/openssl/libssl1.0.0_1.0.1t-1+deb8u6_amd64.deb
dpkg -i libssl1.0.0_1.0.1t-1+deb8u6_amd64.deb

# Install PowerShell
dpkg -i powershell_6.0.0-rc.2-1.ubuntu.16.04_amd64.deb

# Start PowerShell
pwsh
# Grab the latest App Image
wget https://github.com/PowerShell/PowerShell/releases/download/v6.0.0-rc.2/powershell-6.0.0-rc.2-x86_64.AppImage

# Make executable
chmod a+x powershell-6.0.0-rc.2-x86_64.AppImage
mv /usr/bin/pwsh /usr/bin/powershell
 
# Start PowerShell
./powershell-6.0.0-rc.2-x86_64.AppImage

# Start PowerShell
pwsh
