$app1 = "Microsoft Deployment Toolkit"

Write-Host
Write-Verbose "Acquiring $app1 setup file from OSDCloudCline GitHub OSDCloud\OS Kits repository...." -Verbose 
$OSDCloudGHdownloads = "C:\OSDCloud\GitHub\downloads"
$MDTEXE = "C:\OSDCloud\GitHub\downloads\MicrosoftDeploymentToolkit_x64.msi"
$MDTKUrl = "https://github.com/osdcloudcline/Software/raw/refs/heads/main/Utilities/MDT/MicrosoftDeploymentToolkit_x64.msi"
Write-Verbose "Processing and Downloading: $app1 Setup File..." -Verbose
Save-WebFile -SourceUrl $MDTKUrl -DestinationDirectory $OSDCloudGHdownloads

Start-Process -FilePath "C:\OSDCloud\GitHub\downloads\MicrosoftDeploymentToolkit_x64.msi" -ArgumentList "/quiet /norestart"

pause
