# Define the path to the directory containing your .ppkg files
$PpkgDirectory = "C:\Provisioning\Advanced\Software"
$OSPpkgDirectory = "C:\Provisioning\OS"
$OSDCloudPpkgDirectory = "C:\Provisioning\OSDCloud"


# Get all .ppkg files in the specified directory
$PpkgFiles = Get-ChildItem -Path $PpkgDirectory -Filter "*.ppkg"
$OSPPKGFiles = Get-ChildItem -Path $OSPpkgDirectory -Filter "*.ppkg"
$OSDCloudPPKGFiles = Get-ChildItem -Path $OSDCloudPpkgDirectory -Filter "*.ppkg"

$AdvancedPPKG = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/refs/heads/main/Provisioning%20Package%20Silent%20Install%20Scripts/PPKG%20Files/Software%20Configurations/Advanced/Advanced.ps1")
Invoke-Expression $($AdvancedPPKG.Content)

Write-Host "Provisioning:$env:computername..." -ForegroundColor Cyan
Write-Host

# Loop through each .ppkg file and install it
foreach ($OSPpkgFile in $OSPpkgFiles) {
    Write-Host "Installing $($OSPpkgFile.Name)..."
    Install-ProvisioningPackage -PackagePath $OSPpkgFile.FullName -QuietInstall -ForceInstall
    Write-Host "$($OSDCloudPpkgFile.Name) installed."
}

# Loop through each .ppkg file and install it
foreach ($OSDCloudPpkgFile in $OSDCloudPpkgFiles) {
    Write-Host "Installing $($PpkgFile.Name)..."
    Install-ProvisioningPackage -PackagePath $PpkgFile.FullName -QuietInstall -ForceInstall
    Write-Host "$($PpkgFile.Name) installed."
}

# Loop through each .ppkg file and install it
foreach ($PpkgFile in $PpkgFiles) {
    Write-Host "Installing $($PpkgFile.Name)..."
    Install-ProvisioningPackage -PackagePath $PpkgFile.FullName -QuietInstall -ForceInstall
    Write-Host "$($PpkgFile.Name) installed."
}

Write-Host "All provisioning packages have been processed."

winget install --id AnyDeskSoftwareGmbH.AnyDesk --silent --exact --accept-source-agreements --accept-source-agreements --force 
choco install vmware-horizon-client -y






