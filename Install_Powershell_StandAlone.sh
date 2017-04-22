#!/bin/bash
#standalone powershell binary
curl -OL https://github.com/PowerShell/PowerShell/releases/download/v6.0.0-alpha.17/PowerShell-x86_64.AppImage
chmod 777 ./PowerShell-x86_64.AppImage
./PowerShell-x86_64.AppImage
