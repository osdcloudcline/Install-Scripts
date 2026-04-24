Write-Host "Processing Windows Feature: Hyper-V" -ForegroundColor Cyan
Write-Host
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V -All
Write-Host "Processing Windows Feature: Windows Sandbox" -ForegroundColor Cyan
Write-Host
Enable-WindowsOptionalFeature -Online -FeatureName "Containers-DisposableClientVM" -All

$app1 = "VMWare Workstation Professional 25H2"

$VMWareWSProDLURL = "https://dl.bobpony.com/software/vmware/workstation/VMware-Workstation-Full-25H2-24995812.zip"
$destination = "C:\downloads"


Write-Host "Downloading: $app1 ..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan  
Save-WebFile -SourceUrl $VMWareWSProDLURL -DestinationDirectory $destination

Write-Host 
Write-Host "Extracting: $app1 ..." -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
Expand-7Zip -ArchiveFileName "C:\downloads\VMware-Workstation-Full-25H2-24995812.zip" -TargetPath $destination

$Filelocation = "C:\downloads\VVMware-Workstation-Full-25H2-24995812.exe"

Write-Verbose "Installing VMWare Workstation Professional 25H2 Build 24583834..." -Verbose
Write-Host
Start-Process -FilePath $Filelocation -ArgumentList '/s','/v"/qn"'
