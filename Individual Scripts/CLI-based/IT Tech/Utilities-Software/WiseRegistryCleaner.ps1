Start-Transcript -Path "C:\Logs\OSDCloud\Install\IT\Utilities-Software\$env:computername-WRC.log"

$Date = Get-Date

Write-Host "Installed on: $Date"

Import-Module -Name OSD -Force

$app1 = "Wise Registry Cleaner"

Write-Host
Write-Verbose "Installing $app1..." -Verbose

$WiseURL = "https://github.com/osdcloudcline/Software/raw/refs/heads/main/Utilities/Wise/WRCFree_11.1.10.725.exe"
$destination = "C:\downloads"

Save-WebFile -SourceUrl $WiseURL -DestinationDirectory $destination

$SourceFile = "C:\downloads\WRCFree_11.1.10.725.exe"

Start-Process -FilePath $SourceFFile 

Stop-Transcript
