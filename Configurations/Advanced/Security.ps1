$app1 = "Bitdefender Total Security"

Import-Module -Name OSD -Force

$BDURLDL = "https://github.com/osdcloudcline/Software/raw/main/Security/BitDefender/bitdefender_tsecurity.exe"

$destination = "C:\downloads"

Write-Verbose "Processing $app1 for download..." -Verbose
Save-WebFile -SourceUrl $BDURLDL -DestinationDirectory $destination


$app2 = "Norton 360"

$N360DLURL = "https://github.com/osdcloudcline/Software/raw/main/Security/Norton%20360/N360Downloader.exe"

$destination = "C:\downloads"

Write-Verbose "Processing $app2 for download..." -Verbose
Save-WebFile -SourceUrl $N360DLURL -DestinationDirectory $destination

$app3 = "MalwareBytes"

$MBDLURL = "https://github.com/osdcloudcline/Software/raw/main/Security/MalwareBytes/MBSetup.exe"

$destination = "C:\downloads"

Write-Verbose "Processing $app3 for download..." -Verbose
Save-WebFile -SourceUrl $MBDLURL -DestinationDirectory $destination
