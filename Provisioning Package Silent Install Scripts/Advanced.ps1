# Define the path to the directory containing your .ppkg files
$PpkgDirectory = "C:\Provisioning\Advanced\Software"
$OSPpkgDirectory = "C:\Provisioning\OS"

# Get all .ppkg files in the specified directory
$PpkgFiles = Get-ChildItem -Path $PpkgDirectory -Filter "*.ppkg"
$OSPPKGFiles = Get-ChildItem -Path #OSPpkgDirectory -Filter "*.ppkg"

$AdvancedPPKG = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/refs/heads/main/Provisioning%20Package%20Silent%20Install%20Scripts/PPKG%20Files/Software%20Configurations/Advanced/Advanced.ps1")
Invoke-Expression $($AdvancedPPKG.Content)

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


winget install --id AnyDeskSoftwareGmbH.AnyDesk --silent --exact --accept-source-agreements --accept-source-agreements --force 
choco install vmware-horizon-client -y



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
