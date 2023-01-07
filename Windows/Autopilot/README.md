## Gather Windows Autopilot HashID to Azure Intune (directly)

When u have a brand new device setup the wifi so u have an internet connection.
Then click SHIFT + F10 and cmd will open.

Enter explorer.exe, go to the USB stick and run (as administrator):
GetAutoPilot.CMD
(The script will warn you if u didn't execute as administrator).

After a while, the CSV file, named with the serial number from the device, will be saved on the USB Stick.

After you are done, you will see the process in Intune Autopilot. Status must be assigned this could take a while (5-10 minutes)

#### Scripts and Files for this process:
Theses files must be on a stick. 

```
   |- USB Stick
   |--- Get-Info.ps1
   |--- Get-WindowsAutoPilotInfo.ps1
```
