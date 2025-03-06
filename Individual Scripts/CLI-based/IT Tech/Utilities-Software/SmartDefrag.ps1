Start-Transcript -Path "C:\Logs\OSDCloud\Install\IT\Utilities-Software\$env:computername-SmartDefrag.log"

$Date = Get-Date

Write-Host "Installed on: $Date"

Import-Module -Name OSD -Force

$app1 = "Smart Defrag"

Write-Host
Write-Verbose "Installing $app1..." -Verbose

$DefragURL = "https://github.com/osdcloudcline/Software/raw/refs/heads/main/Utilities/IoBit/Smart%20Defrag/version%2010.3.0.435/smart-defrag-setup.exe"
$destination = "C:\downloads"

Save-WebFile -SourceUrl $DefragURL -DestinationDirectory $destination

$SourceFile = "C:\downloads\WRCFree_11.1.10.725.exe"

Start-Process -FilePath $SourceFFile 

Stop-Transcript
