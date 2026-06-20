Write-Host "Processing Windows Feature: Hyper-V" -ForegroundColor Cyan
Write-Host
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V -All
Write-Host "Processing Windows Feature: Windows Sandbox" -ForegroundColor Cyan
Write-Host
Enable-WindowsOptionalFeature -Online -FeatureName "Containers-DisposableClientVM" -All

$app1 = "VMWare Workstation Professional 26H1"

$VMWareWSProDLURL = "https://files.softunwrap.com/vmware/VMware-Workstation-Full-26H1-25388281.zip"
$destination = "C:\downloads"


Write-Host "Downloading: $app1 ..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan  
Save-WebFile -SourceUrl $VMWareWSProDLURL -DestinationDirectory $destination

Write-Host 
Write-Host "Extracting: $app1 ..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
Expand-7Zip -ArchiveFileName "C:\downloads\VMware-Workstation-Full-26H1-25388281.zip" -TargetPath $destination

$Filelocation = "C:\downloads\VMware-Workstation-Full-26H1-25388281.exe"

Write-Verbose "Installing VMWare Workstation Professional 26h1 Build 25388281..." -Verbose
Write-Host
Start-Process -FilePath $Filelocation -ArgumentList '/s','/v"/qn"'
