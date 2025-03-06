Start-Transcript -Path "C:\Logs\OSDCloud\Install\IT\Utilities-Software\$env:computername-DART.log"

$Date = Get-Date

Write-Host "Installed on: $Date"

Import-Module -Name OSD -Force

$app1 = "MS DaRT"

Write-Host
Write-Verbose "Installing $app1..." -Verbose

$DARTURL = "https://github.com/osdcloudcline/Software/raw/refs/heads/main/Utilities/DaRT/version%2010.0%20x64/MSDaRT100.msi"
$DARTZIPURL = "https://github.com/osdcloudcline/Software/raw/refs/heads/main/Utilities/DaRT/version%2010.0%20x64/DARTv10.zip"
$destination = "C:\downloads"

Save-WebFile -SourceUrl $DARTURL -DestinationDirectory $destination
Save-WebFile -SourceUrl $DARTZIPURL -DestinationDirectory $destination

$SourceFile = "C:\downloads\MSDaRT100.msi"

Start-Process -FilePath $SourceFFile 

Stop-Transcript
