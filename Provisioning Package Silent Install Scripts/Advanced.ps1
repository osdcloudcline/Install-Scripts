# Define the path to the directory containing your .ppkg files
$PpkgDirectory = "C:\Provisioning\Advanced\Software"
$OSPpkgDirectory = "C:\Provisioning\OS"
$OSDCloudPpkgDirectory = "C:\Provisioning\OSDCloud"
$PS5Modules = "C:\Provisioning\PS5-Modules"
$PS7Modules = "C:\Provisioning\PS7-Modules"

# Get all .ppkg files in the specified directory
$PpkgFiles = Get-ChildItem -Path $PpkgDirectory -Filter "*.ppkg"
$OSPPKGFiles = Get-ChildItem -Path $OSPpkgDirectory -Filter "*.ppkg"
$OSDCloudPPKGFiles = Get-ChildItem -Path $OSDCloudPpkgDirectory -Filter "*.ppkg"
$PS5PPKGFiles = Get-ChildItem -Path $PS5Modules -Filter "*.ppkg"
$PS7PPKGFiles = Get-ChildItem -Path $PS7Modules -Filter "*.ppkg"

$AdvancedPPKG = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/refs/heads/main/Provisioning%20Package%20Silent%20Install%20Scripts/PPKG%20Files/Software%20Configurations/Advanced/Advanced.ps1")
Invoke-Expression $($AdvancedPPKG.Content)

Write-Host "Provisioning:$env:computername..." -ForegroundColor Cyan
Write-Host

# Loop through each .ppkg file and install it

foreach ($PS5PPKGFile in $PS5PPKGFiles) {
    Write-Host "Installing $($PS5PPKGFile.Name)..."
    Install-ProvisioningPackage -PackagePath $PS5PPKGFile.FullName -QuietInstall -ForceInstall
    Write-Host "$($PS5PPKGFile.Name) installed."
}
foreach ($PS7PPKGFile in $PS7PPKGFiles) {
    Write-Host "Installing $($PS7PPKGFile.Name)..."
    Install-ProvisioningPackage -PackagePath $PS7PPKGFile.FullName -QuietInstall -ForceInstall
    Write-Host "$($PS7PPKGFile.Name) installed."
}
foreach ($OSPpkgFile in $OSPpkgFiles) {
    Write-Host "Installing $($OSPpkgFile.Name)..."
    Install-ProvisioningPackage -PackagePath $OSPpkgFile.FullName -QuietInstall -ForceInstall
    Write-Host "$($OSPpkgFile.Name) installed."
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

Import-Module -Name PSWindowsUpdate -Force
Install-WindowsUpdate -AcceptAll
Restart-Computer





