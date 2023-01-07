$PrintReg = "HKLM:\SOFTWARE\Policies\Microsoft\Windows NT\Printers"
if(!(Test-Path $PrintReg)) { New-Item $PrintReg }
$rpckey = (Get-ItemProperty -Path $RegPath | Select-Object -ExpandProperty 'RegisterSpoolerRemoteRpcEndPoint' -ErrorAction Ignore) if($rpckey -ne $null) { Set-ItemProperty -Path $RegPath -Name 'RegisterSpoolerRemoteRpcEndPoint' -Value 2 -Force
} else { New-ItemProperty -Path $RegPath -Name 'RegisterSpoolerRemoteRpcEndPoint' -Value 2 -PropertyType "DWORD" -Force}
Restart-Service -DisplayName 'Print Spooler' -Force

# https://admx.help/?Category=Windows_10_2016&Policy=Microsoft.Policies.Printing.2::RegisterSpoolerRemoteRpcEndPoint
