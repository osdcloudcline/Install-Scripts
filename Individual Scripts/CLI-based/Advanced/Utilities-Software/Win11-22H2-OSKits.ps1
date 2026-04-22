Start-Transcript -Path "C:\Logs\OSDCloud\Install\Advanced\Utilities-Software\$env:computername-OSADKSDKPE.log"

$Date = Get-Date

Write-Host "Installed on: $Date"

$app1 = "Windows 11 22H2 SDK"
$app2 = "Windows 11 26H1 ADK"
$app3 = "Windows 11 26H1 ADK PE Add-On"


Write-Host
Write-Verbose "Acquiring $app1 setup file from OSDCloudCline GitHub OSDCloud\OS Kits repository...." -Verbose 
$OSDCloudGHdownloads = "C:\downloads"
$Win11_22H2SDK = "C:\downloads\winsdksetup.exe"
$Win11_22H2SDKUrl = "https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/OS%20Kits/winsdksetup.exe"
Write-Verbose "Processing and Downloading: $app1 Setup File..." -Verbose
Save-WebFile -SourceUrl $Win11_22H2SDKUrl -DestinationDirectory $OSDCloudGHdownloads

Start-Process -FilePath "C:\OSDCloud\GitHub\downloads\winsdksetup.exe" -ArgumentList "/quiet /norestart"

pause

Write-Host
Write-Verbose "Acquiring $app2 setup file from OSDCloudCline GitHub OSDCloud\OS Kits repository...." -Verbose 
$OSDCloudGHdownloads = "C:\downloads"
$Win11_26H1ADK = "C:\downloads\adksetup.exe"
$Win11_26H1ADKUrl = "https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/OS%20Kits/adksetup.exe"
Write-Verbose "Processing and Downloading: $app2 Setup File..." -Verbose
Save-WebFile -SourceUrl $Win11_26H1ADKUrl -DestinationDirectory $OSDCloudGHdownloads

Start-Process -FilePath "C:\downloads\adksetup.exe" -ArgumentList "/quiet /norestart"

pause

Write-Host
Write-Verbose "Acquiring $app3 setup file from OSDCloudCline GitHub OSDCloud\OS Kits repository...." -Verbose
$OSDCloudGHdownloads = "C:\downloads"
$Win11_26H1PEADK = "C:\downloads\adkwinpesetup.exe"
$Win11_26H1PEADKUrl = "https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/OS%20Kits/adkwinpesetup.exe"
Write-Verbose "Processing and Downloading: $app3 Setup File..." -Verbose
Save-WebFile -SourceUrl $Win11_26H1PEADKUrl -DestinationDirectory $OSDCloudGHdownloads

Start-Process -FilePath "C:\downloads\adkwinpesetup.exe" -ArgumentList "/quiet /norestart"

Stop-Transcript
