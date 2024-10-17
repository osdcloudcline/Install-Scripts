Start-Transcript -Path "C:\Logs\Powershell\Install\Advanced\Virtualization\$env:computername-VMWareWSPro.log"

$Date = Get-Date

Write-Host "Installed on: $Date"

$app1 = "VMWare Workstation Professional"

Install-Module -Name OSD -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name OSD -Force

$VMWareWSProDLURL = "https://softwareupdate.vmware.com/cds/vmw-desktop/ws/17.6.1/24319023/windows/core/VMware-workstation-17.6.1-24319023.exe.tar"
$destination = "C:\downloads"


Write-Host "Downloading: $app1 ..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan  
Save-WebFile -SourceUrl $VMWareWSProDLURL -DestinationDirectory $destination

Write-Host 
Write-Host "Extracting: $app1 ..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
Expand-7Zip "C:\downloads\VMware-workstation-17.6.1-24319023.exe.tar" $destination

Stop-Transcript

