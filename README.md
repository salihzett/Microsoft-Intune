## Intune

### Intune relevant link
| name | description |
| --- | --- |
| [What's new in Microsoft Intune](https://docs.microsoft.com/en-us/mem/intune/fundamentals/whats-new) | Learn what's new each week in Microsoft Intune in Microsoft Endpoint Manager admin center. |
| [In development for Microsoft Intune](https://docs.microsoft.com/en-us/mem/intune/fundamentals/in-development) | ... |
| [Microsoft Endpoint Manager Intune Feedback](https://microsoftintune.uservoice.com) | Suggestion box powered by UserVoice |
| [Intune Troubleshooting](https://aka.ms/intunetroubleshooting) | Intune Troubleshooting |
| [Intune Customer Success](https://techcommunity.microsoft.com/t5/intune-customer-success/bg-p/IntuneCustomerSuccess) | Intune Customer Success |
| [How to deploy DMG or APP-format apps to Intune-managed Macs](https://techcommunity.microsoft.com/t5/intune-customer-success/how-to-deploy-dmg-or-app-format-apps-to-intune-managed-macs/ba-p/1503416) | Intune Customer Success |
| [Intune App Wrapping Tool Mac](https://github.com/msintuneappsdk/intune-app-wrapping-tool-mac) | Use the Intune App Wrapping Tool for Mac to enable Mac apps to be managed by Microsoft Intune |
| [Microsoft-Win32-Content-Prep-Tool](https://github.com/Microsoft/Microsoft-Win32-Content-Prep-Tool) | A tool to wrap Win32 App and then it can be uploaded to Intune |
| [IntuneWinAppUtil-GUI-V2](https://github.com/marinalexandruradu/IntuneWinAppUtil-GUI-V2) | Simple GUI Interface for IntuneWinAppUtil.exe |
| [Reddit](https://www.reddit.com/r/Intune/) | Intune Mobile Device Management |



### Intune support, scripts, etc.
| name | description |
| --- | --- |
| [Microsoft Intune Automation and Scripting Samples](https://microsoft.github.io/webportal-intune-samples/) | The Intune GitHub scripts repos are intended to help Intune administrators better understand how to utilize the Graph and PowerShell modules for automation. |
| [Intune Shell Samples](https://github.com/microsoft/shell-intune-samples) | Sample shell scripts for Intune admins. |
| [Intune Powershell Samples](https://github.com/microsoftgraph/powershell-intune-samples) | This repository of PowerShell sample scripts show how to access Intune service resources. They demonstrate this by making HTTPS RESTful API requests to the Microsoft Graph API from PowerShell. |
| [Intune MDM](https://www.thelazyadministrator.com/2018/11/19/configure-and-deploy-intune-mdm/) | The lazy administrator |
| [Intune BYOD](https://tech.nicolonsky.ch/enroll-macos-to-microsoft-intune/) | ... |
| [IntuneMacODC](https://github.com/markstan/IntuneMacODC) | Tool to collect information useful for MacOS troubleshooting in Intune environments |
| [Intune Lockscreen](https://www.thelazyadministrator.com/2019/08/08/set-corporate-lock-screen-wallpaper-with-intune-for-non-windows-10-enterprise-or-windows-10-education-machines/) | The lazy administrator |
| [Intune Wallpaper](https://github.com/gregdeichler/InTune/blob/master/Set-DesktopBackGround.ps1) | The lazy administrator |
| [Intune Scripts](https://www.risual.com/2019/02/add-powershell-script-to-intune-company-portal/) | ... |
| [Intune Autopilot Script](https://github.com/MSEndpointMgr/Intune/blob/master/Autopilot/Upload-WindowsAutopilotDeviceInfo.ps1) | ... |


### Azure Aka.ms short links
| name | description |
| --- | --- |
| MacAdmins | https://aka.ms/MacAdmins |
| Intune | https://aka.ms/intuneportal |


### AzureAD dynamic group suggestions for Intune setup
| Groupname | Rule Syntax |
| --- | --- |
| AAD-DYN-USERS-NONACSII | `(user.surname -contains "ö") or (user.surname -contains "ä") or (user.surname -contains "ü") or (user.surname -contains "ß")` |
| AAD-DYN-USERS-INTERNAL-EMPLOYEES| `(user.userPrincipalName -notContains "extern") and (user.userPrincipalName -notContains "#EXT#") and (user.givenName -ne null) and (user.userPrincipalName -contains "domain.com") and (user.jobTitle -notContains "Freelance") and (user.userPrincipalName -notContains "test") and (user.userPrincipalName -notContains "admin") and (user.userPrincipalName -notContains "old.")` |
| AAD-DYN-USERS-FRONTEND DEVELOPER | `(user.jobTitle -contains "Frontend") and (user.accountEnabled -eq true) and (user.userPrincipalName -notcontains "extern")` |
| AAD-DYN-LICENSES-USERS-MICROSOFT-F3 | `user.assignedPlans -any (assignedPlan.servicePlanId -eq "e041597c-9c7f-4ed9-99b0-2663301576f7" -and assignedPlan.capabilityStatus -eq "Enabled")` |
| AAD-DYN-LICENSES-USERS-MICROSOFT-BUSINESS-PREMIUM | `user.assignedPlans -any (assignedPlan.servicePlanId -eq "094e7854-93fc-4d55-b2c0-3ab5369ebdc1" -and assignedPlan.capabilityStatus -eq "Enabled")` |
| AAD-DYN-LICENSES-USERS-MICROSOFT-BUSINESS-BASIC | `user.assignedPlans -any (assignedPlan.servicePlanId -eq "3b555118-da6a-4418-894f-7df1e2096870" -and assignedPlan.capabilityStatus -eq "Enabled")` |
| AAD-DYN-LICENSES-USERS-DYN365-ENTERPRISE-SALES | `user.assignedPlans -any (assignedPlan.servicePlanId -eq "1259157c-8581-4875-bca7-2ffb18c51bda" -and assignedPlan.capabilityStatus -eq "Enabled")` |
| AAD-DYN-LICENSES-USER-WINDOWS-WINDEFATP | `user.assignedPlans -any (assignedPlan.servicePlanId -eq "871d91ec-ec1a-452b-a83f-bd76c7d770ef" -and assignedPlan.capabilityStatus -eq "Enabled")` |
| AAD-DYN-DEPARTMENT-INFRASTRUCTURE | `user.department -eq "Infrastructure" and user.accountEnabled -eq true and (user.userPrincipalName -notcontains "extern")` |
| AAD-DYN-COMPANY-DEVICES-WINDOWS 11 | `(device.deviceOSType -contains "Windows") and (device.deviceOwnership -eq "Company") and (device.deviceOSVersion -startsWith "10.0.2")` |
| AAD-DYN-COMPANY-DEVICES-WINDOWS 10 | `(device.deviceOSType -contains "Windows") and (device.deviceOwnership -eq "Company") and (device.deviceOSVersion -startsWith "10.0.1")` |
| AAD-DYN-COMPANY-DEVICES-WINDOWS-VMs | `(device.deviceManufacturer -contains "VMware") and (device.deviceOwnership -eq "Company")` |
| AAD-DYN-COMPANY-DEVICES-WINDOWS-LENOVO-X1 | `(device.deviceOwnership -contains "Company") and (device.deviceManufacturer -eq "Lenovo") and (device.deviceModel -startsWith "20XWCTO1WW")` |
| AAD-DYN-COMPANY-DEVICES-WINDOWS-LENOVO-T490S | `(device.deviceOwnership -contains "Company") and (device.deviceManufacturer -eq "Lenovo") and (device.deviceModel -startsWith "20NXCTO1WW")` |
| AAD-DYN-COMPANY-DEVICES-WINDOWS-LENOVO-T470S | `(device.deviceOwnership -contains "Company") and (device.deviceManufacturer -eq "Lenovo") and (device.deviceModel -startsWith "20HF0000GE")` |
| AAD-DYN-COMPANY-DEVICES-WINDOWS-LENOVO-E14 | `(device.deviceOwnership -contains "Company") and (device.deviceManufacturer -eq "Lenovo") and (device.deviceModel -startsWith "20TA0033GE")` |
| AAD-DYN-COMPANY-DEVICES-WINDOWS-AUTOPILOT | `(device.devicePhysicalIDs -any _ -contains "[ZTDId]")` |
| AAD-DYN-COMPANY-DEVICES-WINDOWS-365 | `(device.deviceManufacturer -contains "Microsoft") and (device.deviceOwnership -eq "Company") and (device.deviceModel -contains "Cloud PC Enterprise")` |
| AAD-DYN-COMPANY-DEVICES-WINDOWS | `(device.deviceOSType -contains "Windows") and (device.deviceOwnership -eq "Company")` |
| AAD-DYN-COMPANY-DEVICES-SHARED-IPAD | `(device.deviceOSType -contains "iPad") and (device.deviceOwnership -eq "Company") and (device.enrollmentProfileName -contains "Shared iPad")` |
| AAD-DYN-COMPANY-DEVICES-MTR | `(device.deviceModel -contains "SRS") or (device.deviceModel -contains "MTR")` |
| AAD-DYN-COMPANY-DEVICES-MACMDM-NOT-VENTURA | `(device.deviceOSType -contains "MacMDM") and (device.deviceOSVersion -notStartsWith "13") and (device.deviceOwnership -eq "Company")` |
| AAD-DYN-COMPANY-DEVICES-MACMDM-MONTEREY | `(device.deviceOSVersion -contains "12.") and (device.deviceOwnership -eq "Company")` |
| AAD-DYN-COMPANY-DEVICES-MACMDM | `(device.deviceOSType -contains "MacMDM") and (device.deviceOwnership -eq "Company")` |
| AAD-DYN-COMPANY-DEVICES-IPADSOS | `(device.deviceModel -contains "iPad") and (device.deviceOwnership -eq "Company")` |
| AAD-DYN-COMPANY-DEVICES-IPADOS-PRO | `(device.deviceModel -contains "iPad Pro") and (device.deviceOwnership -eq "Company")` |
| AAD-DYN-COMPANY-DEVICES-IPADOS-AIR | `(device.deviceModel -contains "iPad Air") and (device.deviceOwnership -eq "Company")` |
| AAD-DYN-COMPANY-DEVICES-IOS-SINGLE | `(device.deviceModel -contains "iPhone") and (device.deviceOwnership -eq "Company") and (device.enrollmentProfileName -notContains "Shared iPhone")` |
| AAD-DYN-COMPANY-DEVICES-IOS-SHARED | `(device.deviceModel -contains "iPhone") and (device.deviceOwnership -eq "Company") and (device.enrollmentProfileName -contains "Shared iPhone")` |
| AAD-DYN-COMPANY-DEVICES-IOS | `(device.deviceModel -contains "iPhone") and (device.deviceOwnership -eq "Company")` |
| AAD-DYN-COMPANY-DEVICES-HUAWEI | `(device.deviceManufacturer -contains "Huawei") and (device.deviceOwnership -eq "Company")` |
| AAD-DYN-COMPANY-DEVICES-ANDROID-YEALINK | `(device.deviceManufacturer -eq "Yealink")` |
| AAD-DYN-COMPANY-DEVICES-ANDROID-SINGLE-USER | `(device.enrollmentProfileName -contains "Android - Single User")`|
| AAD-DYN-COMPANY-DEVICES-ANDROID-SHARED-MODE | `(device.enrollmentProfileName -contains "Android - Shared Mode")`|
| AAD-DYN-COMPANY-DEVICES-ANDROID-NOT-SHARED | `(device.deviceOSType -match "AndroidEnterprise") and (device.enrollmentProfileName -notContains "Android - Shared Mode")`|
| AAD-DYN-COMPANY-DEVICES-ANDROID-NEAT | `(device.deviceManufacturer -eq "Neatframe")`|
| AAD-DYN-COMPANY-DEVICES-ANDROID-FULLY-MEMBERS | `(device.deviceOSType -eq "AndroidEnterprise") -and (device.enrollmentProfileName -eq null)`|
| AAD-DYN-COMPANY-DEVICES-ANDROID-ENTERPRISE | `(device.deviceOSType -match "AndroidEnterprise")`|
| AAD-DYN-COMPANY-DEVICES-ANDROID | `(device.deviceOSType -contains "Android") and (device.deviceOwnership -eq "Company")`|
| AAD-DYN-BYOD-DEVICES-WINDOWS | `(device.deviceOSType -contains "Windows") and (device.deviceOwnership -eq "Personal")`|
| AAD-DYN-BYOD-DEVICES-MACMDM | `(device.deviceOSType -contains "MacMDM") and (device.deviceOwnership -eq "Personal")`|
| AAD-DYN-BYOD-DEVICES-IPADOS | `(device.deviceModel -contains "iPad") and (device.deviceOwnership -eq "Personal")`|
| AAD-DYN-BYOD-DEVICES-IOS | `((device.deviceModel -contains "iPad") or (device.deviceModel -contains "iPhone")) and (device.deviceOwnership -eq "Personal")`|
| AAD-DYN-BYOD-DEVICES-ANDROID | `(device.deviceOSType -contains "Android") and (device.deviceOwnership -eq "Personal")`|
