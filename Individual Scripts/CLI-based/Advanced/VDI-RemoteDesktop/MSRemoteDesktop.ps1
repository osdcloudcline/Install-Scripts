Start-Transcript -Path "C:\Logs\Powershell\Install\Advanced\VDI\$env:computername-MSRemoteDesktop.log"

$Date = Get-Date

Write-Host "Installed on: $Date"

$app1 = "Microsoft Remote Desktop Client"

Import-Module -Name OSD -Force
Import-Module -Name 7Zip4Powershell -Force

Write-Host
Write-Verbose "Processing: Downloading $app1..."  -Verbose
$RDP1URL = "https://github.com/osdcloudcline/Software/raw/refs/heads/main/Utilities/Microsoft%20Remote%20Desktop/RemoteDesktop.zip.001"
$RDP2URL = "https://github.com/osdcloudcline/Software/raw/refs/heads/main/Utilities/Microsoft%20Remote%20Desktop/RemoteDesktop.zip.002"

$RDPDestination = "C:\downloads\Microsoft Remote Desktop"

Save-WebFile -SourceUrl $RDP1URL -DestinationDirectory $RDPDestination
Save-WebFile -SourceUrl $RDP2URL -DestinationDirectory $RDPDestination

Expand-7Zip -ArchiveFileName "$RDPDestination\RemoteDesktop.zip.001" -TargetPath $RDPDestination  -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$RDPDestination\RemoteDesktop.zip.002" -TargetPath $RDPDestination  -ErrorAction SilentlyContinue 

Rename-Item -Path "$RDPDestination\RemoteDesktop_1.2.5910.0_x64.msi" -NewName "$RDPDestination\RemoteDesktop.msi" -Force

Remove-Item -Path "$RDPDestination\RemoteDesktop.zip.001" -Force
Remove-Item -Path "$RDPDestination\RemoteDesktop.zip.002" -Force

Write-Verbose "Installing: $app1..."  -Verbose
Write-Host

Start-Process -FilePath "C:\downloads\Microsoft Remote Desktop\RemoteDesktop.msi" -ArgumentList "/quiet /norestart"

Stop-Transcript
