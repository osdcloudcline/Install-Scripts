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


