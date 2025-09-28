# Define the path to the directory containing your .ppkg files
$PpkgDirectory = "C:\Provisioning\Advanced\Software"
$OSPpkgDirectory = "C:\Provisioning\OS"

# Get all .ppkg files in the specified directory
$PpkgFiles = Get-ChildItem -Path $PpkgDirectory -Filter "*.ppkg"
$OSPPKGFiles = Get-ChildItem -Path #OSPpkgDirectory -Filter "*.ppkg"



Write-Host "Provisioning $env:computername..." -ForegroundColor Cyan
Write-Host

# Loop through each .ppkg file and install it
foreach ($OSPpkgFile in $OSPpkgFiles) {
    Write-Host "Installing $($OSPpkgFile.Name)..."
    Install-ProvisioningPackage -PackagePath $OSPpkgFile.FullName -QuietInstall -ForceInstall
    Write-Host "$($OSPpkgFile.Name) installed."
}


# Loop through each .ppkg file and install it
foreach ($PpkgFile in $PpkgFiles) {
    Write-Host "Installing $($PpkgFile.Name)..."
    Install-ProvisioningPackage -PackagePath $PpkgFile.FullName -QuietInstall -ForceInstall
    Write-Host "$($PpkgFile.Name) installed."
}

Write-Host "All provisioning packages have been processed."


winget install --id Audacity.Audacity --silent --exact --accept-source-agreements --accept-source-agreements --force
choco install audacity-ffmpeg -y
winget install --id GIMP.GIMP --silent --exact --accept-source-agreements --accept-source-agreements --force
winget install --id HandBrake.HandBrake --silent --exact --accept-source-agreements --accept-source-agreements --force
winget install --id XBMCFoundation.Kodi  --silent --exact --accept-source-agreements --accept-source-agreements --force
winget install --id MoritzBunkus.MKVToolNix --silent --exact --accept-source-agreements --accept-source-agreements --force
winget install --id GuinpinSoft.MakeMKV  --silent --exact --accept-source-agreements --accept-source-agreements --force
winget install --id MediaArea.MediaInfo.GUI --silent --exact --accept-source-agreements --accept-source-agreements --force
winget install --id Logitech.MyHarmony --silent --exact --accept-source-agreements --accept-source-agreements --force
winget install --id PowerSoftware.PowerISO --silent --exact --accept-source-agreements --accept-source-agreements --force
winget install --id VideoLAN.VLC --silent --exact --accept-source-agreements --accept-source-agreements --force
winget install --id Apple.iTunes --silent --exact --accept-source-agreements --accept-source-agreements --force

winget install --id Adobe.Acrobat.Reader.64-bit --silent --exact --accept-source-agreements --accept-source-agreements --force

winget install --id Anysphere.Cursor --silent --exact --accept-source-agreements --accept-source-agreements --force
choco install visualstudio2022enterprise --package-parameters "'--allWorkloads --includeRecommended --includeOptional --passive --locale en-US --quiet --norestart'" -y
winget install --id Microsoft.VisualStudioCode --silent --exact --accept-source-agreements --accept-source-agreements --force

winget install --id Crucial.StorageExecutive --silent --exact --accept-source-agreements --accept-source-agreements --force
winget install --id Logitech.Options --silent --exact --accept-source-agreements --accept-source-agreements --force
winget install --id Logitech.UnifyingSoftware --silent --exact --accept-source-agreements --accept-source-agreements --force
winget install --id Microsoft.MouseandKeyboardCenter --silent --exact --accept-source-agreements --accept-source-agreements --force
winget install --id Samsung.SamsungMagician --silent --exact --accept-source-agreements --accept-source-agreements --force 
winget install --id WesternDigital.Dashboard --silent --exact --accept-source-agreements --accept-source-agreements --force 

winget install --id 7zip.7zip --silent --exact --accept-source-agreements --accept-source-agreements --force 
winget install --id Piriform.CCleaner --silent --exact --accept-source-agreements --accept-source-agreements --force 
winget install --id Wagnardsoft.DisplayDriverUninstaller --silent --exact --accept-source-agreements --accept-source-agreements --force 
winget install --id Rainmeter.Rainmeter --silent --exact --accept-source-agreements --accept-source-agreements --force
winget install --id WhirlwindFX.SignalRgb --silent --exact --accept-source-agreements --accept-source-agreements --force

winget install --id AnyDeskSoftwareGmbH.AnyDesk --silent --exact --accept-source-agreements --accept-source-agreements --force 
choco install vmware-horizon-client -y

$WADKDir1 = "C:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Windows Preinstallation Environment\x86\Media"
$WADKDir2 = "C:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Windows Preinstallation Environment\x86\WinPE_OCs"
$WADKDir3 = "C:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Windows Preinstallation Environment\x86\en-us"

New-Item -Path $WADKDir1 -ItemType Directory -Force
New-Item -Path $WADKDir2 -ItemType Directory -Force
New-Item -Path $WADKDir3 -ItemType Directory -Force

winget install --id Microsoft.WindowsADK --silent --accept-package-agreements --accept-source-agreements --scope machine --force 
winget install --id Microsoft.ADKPEAddon  --silent --accept-package-agreements --accept-source-agreements --scope machine --force 
winget install --id Microsoft.DeploymentToolkit --silent --accept-package-agreements --accept-source-agreements --scope machine --force


Install-Module -Name OSD -Force
Import-Module -Name OSD -Force

Install-Module -Name 7Zip4Powershell -Force
Import-Module -Name 7Zip4Powershell -Force

winget install --id Glarysoft.GlaryUtilities --silent --exact --accept-source-agreements --accept-source-agreements --force 
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

$OfficeGHdownloads = "C:\Office\2024" 
mkdir $OfficeGHdownloads
$Office2024Files1Url = "https://github.com/osdcloudcline/Software/raw/refs/heads/main/Productivity/Microsoft/Office%202024/Configuration-Office2024-EntireSuiteVL.xml"
$Office2024Files2Url = "https://github.com/osdcloudcline/Software/raw/refs/heads/main/Productivity/Microsoft/Office%202024/officedeploymenttool_18227-20162.exe"
$Office2024Files3Url = "https://github.com/osdcloudcline/Software/raw/refs/heads/main/Productivity/Microsoft/Office%202024/setup.exe"

Save-WebFile -SourceUrl $Office2024Files1Url -DestinationDirectory $OfficeGHdownloads
Save-WebFile -SourceUrl $Office2024Files2Url -DestinationDirectory $OfficeGHdownloads
Save-WebFile -SourceUrl $Office2024Files3Url -DestinationDirectory $OfficeGHdownloads

$N360DLURL = "https://github.com/osdcloudcline/Software/raw/main/Security/Norton%20360/N360Downloader.exe"
$BDURLDL = "https://github.com/osdcloudcline/Software/raw/main/Security/BitDefender/bitdefender_tsecurity.exe"

$destination = "C:\downloads"

Save-WebFile -SourceUrl $N360DLURL -DestinationDirectory $destination
Save-WebFile -SourceUrl $BDURLDL -DestinationDirectory $destination

winget install --id Malwarebytes.Malwarebytes --silent --exact --accept-source-agreements --accept-source-agreements --force
