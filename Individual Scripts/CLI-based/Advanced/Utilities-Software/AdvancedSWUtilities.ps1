# Define the Advanced Software Utilities Software using Hash Tables @{ }
$ADVSWUtils = @(
   @{ Name = "7-Zip"; ID = "7zip.7zip" }
   @{ Name = "CCleaner"; ID = "Piriform.CCleaner" }
   @{ Name = "DDU"; ID = "Wagnardsoft.DisplayDriverUninstaller" }
   @{ Name = "Glary Utilities"; ID = "Glarysoft.GlaryUtilities" }
   @{ Name = "Hardware Monitor Pro"; ID = "Logitech.LGS" }
   @{ Name = "Microsoft Deployment Toolkit"; ID = "Microsoft.MouseandKeyboardCenter" }
   @{ Name = "Microsoft DaRT"; ID = "Microsoft.MouseandKeyboardCenter" }
   @{ Name = "Smart Defrag"; ID = "Microsoft.MouseandKeyboardCenter" }
   @{ Name = "Windows 11 ADK 26H1"; ID = "Microsoft.MouseandKeyboardCenter" }
   @{ Name = "Wise Registry Cleaner"; ID = "Microsoft.MouseandKeyboardCenter" }
)

# Process WinGet Items
foreach($App in $ADVSWUtils){
    Write-Host "`nProcessing install for: $($App.Name)" -ForegroundColor Cyan
    # Added --silent and --accept-package-agreements for better automation
    winget install --id $($App.ID) --exact --silent --accept-package-agreements --accept-source-agreements --force
    Write-Host "Completed: $($App.Name) install`n" -ForegroundColor Green
}

$OSDCloudGHdownloads = "C:\downloads"
$GlaryZipURL1 = "https://github.com/osdcloudcline/Software/raw/refs/heads/main/Utilities/Glary%20Utilities/GlaryUtilities1.zip"
$GlaryZipURL2 = "https://github.com/osdcloudcline/Software/raw/refs/heads/main/Utilities/Glary%20Utilities/GlaryUtilities2.zip"
$GlaryUnZipPath = "C:\downloads\GlaryUtilities"

Save-WebFile -SourceUrl $GlaryZipURL1 -DestinationDirectory $OSDCloudGHdownloads
Save-WebFile -SourceUrl $GlaryZipURL2 -DestinationDirectory $OSDCloudGHdownloads
Expand-7Zip -ArchiveFileName "$OSDCloudGHdownloads\GlaryUtilities1.zip" -TargetPath $GlaryUnZipPath 
Expand-7Zip -ArchiveFileName "$OSDCloudGHdownloads\GlaryUtilities2.zip" -TargetPath $GlaryUnZipPath 
Copy-Item -Path "C:\downloads\GlaryUtilities" -Destination "C:\Program Files (x86)\Glary Utilities" -Recurse -Force 
Stop-Process -Name Integrator.exe -Force
Stop-Process -Name MemfilesService.exe -Force
Copy-Item -Path "C:\Program Files (x86)\Glary Utilities\GlaryUtilities\*.*" -Destination "C:\Program Files (x86)\Glary Utilities" -Recurse -Force 
Remove-Item -Path "C:\Program Files (x86)\Glary Utilities\GlaryUtilities" -Force -Confirm:$false
Copy-Item -Path "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Glary Utilities.lnk" -Destination "C:\Users\$env:username\Desktop" -Force

$app1 = "Microsoft Deployment Toolkit Build 8456"

Write-Host
Write-Verbose "Acquiring $app1 setup file from OSDCloudCline GitHub OSDCloud\OS Kits repository...." -Verbose 
$OSDCloudGHdownloads = "C:\downloads"
$MDTEXE = "C:\downloads\MicrosoftDeploymentToolkit_x64.msi"
$MDTKUrl = "https://github.com/osdcloudcline/Software/raw/refs/heads/main/Utilities/MDT/MicrosoftDeploymentToolkit_x64.msi"
Write-Verbose "Processing and Downloading: $app1 Setup File..." -Verbose
Save-WebFile -SourceUrl $MDTKUrl -DestinationDirectory $OSDCloudGHdownloads

Start-Process -FilePath "C:\downloads\MicrosoftDeploymentToolkit_x64.msi" -ArgumentList "/quiet /norestart"

$app1 = "MS DART"

Write-Host
Write-Verbose "Acquiring $app1 setup file from OSDCloudCline GitHub OSDCloud\OS Kits repository...." -Verbose 
$OSDCloudGHdownloads = "C:\downloads"
$MSDARTEXE = "C:\downloads\MSDaRT100.msi"
$DARTUrl = "https://github.com/osdcloudcline/Software/raw/refs/heads/main/Utilities/DaRT/version%2010.0%20x64/MSDaRT100.msi"
Write-Verbose "Processing and Downloading: $app1 Setup File..." -Verbose
Save-WebFile -SourceUrl $DARTUrl -DestinationDirectory $OSDCloudGHdownloads

Start-Process -FilePath "C:\downloads\MSDaRT100.msi" 
