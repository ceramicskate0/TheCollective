# Yet Another Kali Linux Scripts Repo
This repo contains a collection pointers to scripts,apps,repos, and/or programs that I have found useful during my time on Red Team Ops. I maintain the collection of what is basically pointers to the repos here so I only have 1 place to go to get them all and not have to remember them all. Setup,install, or bugs with the downloaded repos that between you and the owner.

## Legalish Disclaimer: 
I dont recommend or condone using anything on here for any reason. Anything in the LIsts Dir i did not write so I cant exactly tell you what or how it does what it says it does. The scipts here may work, but most likely have a chance to break the system they are run on. If you use them you do so at your own risk. I do/have NEVER authorized,condoned, or recommend the use of anything in any of my repos for any reason. This is a collection of simple scripts I found useful with my own Kali OS for educational purposes only or when im on a Pen Test. I did not create any of the scripts downloaded via the install.py. All credit goes to the authors whos full URL and/or github account is listed in the script, please see their sites for more info or issue with their repo's. It should be noted that since these are all publically available then they are to be used for education purposes only.

# Instructions:
Just run the files to build or maintain the Toolbox.

install.py will build the ToolBox in cwd.

update.py is for updating the repos and /Lists.

# For the Blue Team:
For the die hard Blue Teamers here. I know its hard belive me I do. And Repos like this make life seem harder...well unless u use this Repo to your advantage. Also to help end ive created "Yet Another Blue Team Repo" (YABTR) for the Blue team to help fight/Find Red/YAKSR.

# "Support":
Currenlty im only using this on Kali Linux. I guess the github scripts would work on other Linux distros if you have all the packages (nope im not doing anything for that).

## Helpful CMDs/Notes:
Scan Wifi info: iw wlan0 scan

Set File Attributes (Linux):chattr {arg} {FilePath}

systeminfo (Download output and run windows exploit suggestor)

$WebClient = New-Object System.Net.WebClient
$WebClient.DownloadFile("http(s)://URL/file" || file:C:\path\file")
cd \Windows\Microsoft.NET\Framework\v4.0.30319

Client Side Complies:
cd \Windows\Microsoft.NET\Framework\v{Version Number}
csc.exe /unsafe /reference:{Call all in .cs File 1 ref arg per ref} /win32icon:C:\p0wnedShell\{ProjName}.ico /out:C:\{ProjName\Path}.{Extension}(ie exe or DLL) /platform:x86 "C:\{Proj location}\*.cs"
