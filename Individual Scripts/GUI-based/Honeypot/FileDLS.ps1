$FileDLsLog = "C:\Logs\Installs\Software\Honeypot\GUI\$env:computername-FileDLs.log"

Start-Transcript -Path $FileDLsLog

$VPNURL = "https://www.ipvanish.com/software/setup-prod-v2/ipvanish-setup.exe"

$MBDLURL = "https://github.com/osdcloudcline/Software/raw/main/Security/MalwareBytes/MBSetup.exe"

$destination = "C:\downloads"


Save-WebFile -SourceUrl $VPNURL -DestinationDirectory $destination

Save-WebFile -SourceUrl $MBDLURL -DestinationDirectory $destination


Stop-Transcript
