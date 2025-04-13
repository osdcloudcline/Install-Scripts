$app1 = "MS DART"

Write-Host
Write-Verbose "Acquiring $app1 setup file from OSDCloudCline GitHub OSDCloud\OS Kits repository...." -Verbose 
$OSDCloudGHdownloads = "C:\OSDCloud\GitHub\downloads"
$MSDARTEXE = "C:\OSDCloud\GitHub\downloads\MSDaRT100.msi"
$DARTUrl = "https://github.com/osdcloudcline/Software/raw/refs/heads/main/Utilities/DaRT/version%2010.0%20x64/MSDaRT100.msi"
Write-Verbose "Processing and Downloading: $app1 Setup File..." -Verbose
Save-WebFile -SourceUrl $DARTUrl -DestinationDirectory $OSDCloudGHdownloads

Start-Process -FilePath "C:\OSDCloud\GitHub\downloads\MSDaRT100.msi" 
pause
