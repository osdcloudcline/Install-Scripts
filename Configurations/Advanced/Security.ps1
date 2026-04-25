$app1 = "Bitdefender Total Security"
$app2 = "Norton 360"
$app3 = "MalwareBytes"
$app4 = "IP Vanish VPN"
$app5 = "Nord VPN"

$BDURLDL = "https://github.com/osdcloudcline/Software/raw/main/Security/BitDefender/bitdefender_tsecurity.exe"
$N360DLURL = "https://github.com/osdcloudcline/Software/raw/main/Security/Norton%20360/N360Downloader.exe"
$MBDLURL = "https://github.com/osdcloudcline/Software/raw/main/Security/MalwareBytes/MBSetup.exe"
$VPNURL = "https://www.ipvanish.com/software/setup-prod-v2/ipvanish-setup.exe"
$VPNURL = "https://downloads.nordcdn.com/apps/windows/NordVPN/latest/NordVPNSetup.exe"

Import-Module -Name OSD -Force

$destination = "C:\downloads"

Write-Verbose "Processing $app1 for download..." -Verbose
Save-WebFile -SourceUrl $BDURLDL -DestinationDirectory $destination
Write-Host

Write-Verbose "Processing $app2 for download..." -Verbose
Save-WebFile -SourceUrl $N360DLURL -DestinationDirectory $destination
Write-Host

Write-Verbose "Processing $app3 for download..." -Verbose
Save-WebFile -SourceUrl $MBDLURL -DestinationDirectory $destination
Write-Host

Write-Verbose "Processing $app4 for download..." -Verbose
Save-WebFile -SourceUrl $VPNURL -DestinationDirectory $destination
Write-Host

Write-Verbose "Processing $app5 for download..." -Verbose
Save-WebFile -SourceUrl $VPNURL -DestinationDirectory $destination
Write-Host
