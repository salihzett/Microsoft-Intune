#Install-Module -Name Microsoft.Graph.Intune	
#Install-Module -Name WindowsAutoPilotIntune	

Import-Module Microsoft.Graph.Intune
Import-Module WindowsAutopilotIntune

$tenant = “XXX.onmicrosoft.com”
$authority = “https://login.windows.net/$tenant”
$clientId = “XXX”
$clientSecret = “XXX”

Update-MSGraphEnvironment -AppId $clientId -Quiet
Update-MSGraphEnvironment -AuthUrl $authority -Quiet
Connect-MSGraph -ClientSecret $ClientSecret -Quiet

Get-AutopilotDevice
