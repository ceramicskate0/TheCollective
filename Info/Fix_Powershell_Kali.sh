#!/bin/bash

# Grab the latest App Image
wget https://github.com/PowerShell/PowerShell/releases/download/v6.0.0-rc.2/powershell-6.0.0-rc.2-x86_64.AppImage

# Make executable
chmod a+x powershell-6.0.0-rc.2-x86_64.AppImage
mv powershell-6.0.0-rc.2-x86_64.AppImage /usr/bin/powershell

# Start PowerShell
powershell
