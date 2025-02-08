Start-Transcript -Path "C:\Logs\OSDCloud\Install\Advanced\Security\$env:computername-NordVPNDownload.log"

$app1 = "Nord VPN"

Install-Module -Name OSD -AllowClobber -SkipPublisherCheck -Force
Import-Module -Name OSD -Force

$VPNURL = "https://downloads.nordcdn.com/apps/windows/NordVPN/latest/NordVPNSetup.exe"

$destination = "C:\downloads"

Write-Verbose "Processing $app1 for download..." -Verbose
Save-WebFile -SourceUrl $VPNURL -DestinationDirectory $destination

Stop-Transcript
