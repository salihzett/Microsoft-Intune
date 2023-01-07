@ECHO OFF

goto check_Permissions

:check_Permissions
    echo Administrative permissions required. Detecting permissions...

    net session >nul 2>&1
    if %errorLevel% == 0 (
        echo Success: Administrative permissions confirmed.
	echo Let me do some stuff for preparing
	PowerShell -NoProfile -ExecutionPolicy Unrestricted -Command Enable-PSRemoting -SkipNetworkProfileCheck -Force
	echo Done, now I will gather AutoPilot Hash ID
	PowerShell -NoProfile -ExecutionPolicy Unrestricted -Command Get-WindowsAutoPilotInfo.ps1 -ComputerName $env:computername -OutputFile $env:computername.csv -append
	echo Also done. You will find the file on your USB stick.
	echo Now I will try to import this directly to Intune
	PowerShell -NoProfile -ExecutionPolicy Unrestricted -Command Get-WindowsAutoPilotInfo.ps1 -Online
	echo Thats it. You can shutdown the device.
	pause

    ) else (
        echo Failure: Please right-click on this file again and run as administrator, thanks.
	pause
    )
