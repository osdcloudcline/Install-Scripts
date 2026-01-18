Start-Transcript -Path "C:\Logs\OSDCloud\Install\Advanced\Virtualization\$env:computername-VMWareWSPro.log"

$Date = Get-Date

Write-Host "Installed on: $Date"

$app1 = "VMWare Workstation Professional"

Install-Module -Name OSD -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name OSD -Force

$VMWareWSProDLURL = "https://dl.bobpony.com/software/vmware/workstation/VMware-Workstation-Full-25H2-24995812.zip"
$destination = "C:\downloads"


Write-Host "Downloading: $app1 ..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan  
Save-WebFile -SourceUrl $VMWareWSProDLURL -DestinationDirectory $destination

Write-Host 
Write-Host "Extracting: $app1 ..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
Expand-7Zip -ArchiveFileName "C:\downloads\VMware-Workstation-Full-25H2-24995812.zip" -TargetPath $destination

Stop-Transcript


