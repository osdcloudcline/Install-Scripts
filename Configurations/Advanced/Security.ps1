$app1 = "Bitdefender Total Security"

Import-Module -Name OSD -Force

$BDURLDL = "https://github.com/osdcloudcline/Software/raw/main/Security/BitDefender/bitdefender_tsecurity.exe"

$destination = "C:\downloads"

Write-Verbose "Processing $app1 for download..." -Verbose
Save-WebFile -SourceUrl $BDURLDL -DestinationDirectory $destination


