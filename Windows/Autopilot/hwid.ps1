# Script to gather the hashID for Autopilot. (legacy version)

Set-ExecutionPolicy -Scope Process -ExecutionPolicy Unrestricted
Install-Script -Name Get-WindowsAutoPilotInfo 
$b = hostname
Get-WindowsAutoPilotInfo.ps1 -OutputFile c:\$b.csv
