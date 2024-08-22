$app1 = "IP Vanish VPN"
$app2 = "MalwareBytes"

Install-Module -Name OSD -AllowClobber -SkipPublisherCheck -Force
Import-Module -Name OSD -Force

$VPNURL = "https://www.ipvanish.com/software/setup-prod-v2/ipvanish-setup.exe"

$MBDLURL = "https://github.com/osdcloudcline/Software/raw/main/Security/MalwareBytes/MBSetup.exe"

$destination = "C:\downloads"

Write-Host "Processing: $app1.." -ForegroundColor Cyan
Save-WebFile -SourceUrl $VPNURL -DestinationDirectory $destination
Write-Host
Write-Host "Processing: $app2.." -ForegroundColor Cyan
Save-WebFile -SourceUrl $MBDLURL -DestinationDirectory $destination
