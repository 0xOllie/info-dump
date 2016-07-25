@echo off
echo *************************
echo info-dump diagnostic tool
echo Written by Oliver Collins
echo *************************
echo Starting...
rmdir /s /q data
mkdir data
cd data
echo -------------------------
echo Getting System info...
dxdiag /t systemInfo
echo Got system info...
echo Done.
echo -------------------------
echo Getting logs...
wevtutil epl System systemLog.evtx
echo Got System log...
wevtutil epl Application applicationLog.evtx
echo Got Application log...
wevtutil epl Setup setupLog.evtx
echo Got Setup log...
echo Done.
echo -------------------------
echo Getting program list...
Powershell.exe -Command " & {Get-ItemProperty HKLM:\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\* | Select-Object DisplayName, DisplayVersion, Publisher, InstallDate}" > installedPrograms.txt
echo Got application list
echo Done.
echo -------------------------
echo Getting network info...
ipconfig > networkInfo.txt
echo Got ip info...
netstat >> networkInfo.txt
echo Got active connection info...
net start >> networkInfo.txt
echo Got running services...
echo Done.
echo -------------------------
echo List of info grabbed
dir /b /a-d
echo -------------------------
echo Exiting.
pause
