# Define the path to the directory containing your .ppkg files
$SoftwarePpkgDirectory = "C:\Provisioning\Advanced\Software"

$ASPPpkgDirectory = "C:\Provisioning\OS\ASP"
$PSProvidersPpkgDirectory = "C:\Provisioning\OS\Package Providers"
$NETPpkgDirectory = "C:\Provisioning\OS\NET"
$OracleJREPpkgDirectory = "C:\Provisioning\OS\OracleJRE"
$SYSTEMSoftwarePpkgDirectory = "C:\Provisioning\OS\SYSTEM"
$OSDCloudPpkgDirectory = "C:\Provisioning\OSDCloud"
$PS5Modules = "C:\Provisioning\PS5-Modules"
$PS7Modules = "C:\Provisioning\PS7-Modules"

# Get all .ppkg files in the specified directory
$PS5PPKGFiles = Get-ChildItem -Path $PS5Modules -Filter "*.ppkg"
$PS7PPKGFiles = Get-ChildItem -Path $PS7Modules -Filter "*.ppkg"
$SYSTEMSoftwarePPKGFiles = Get-ChildItem -Path $SYSTEMSoftwarePpkgDirectory -Filter "*.ppkg"
$NETPPKGFiles = Get-ChildItem -Path $NETPpkgDirectory -Filter "*.ppkg"
$OracleJREFiles = Get-ChildItem -Path $OracleJREPpkgDirectory -Filter "*.ppkg"
$ASPFiles = Get-ChildItem -Path $ASPPpkgDirectory -Filter "*.ppkg"
$ADVSoftwarePpkgFiles = Get-ChildItem -Path $PpkgDirectory -Filter "*.ppkg"
$OSPPKGFiles = Get-ChildItem -Path $OSPpkgDirectory -Filter "*.ppkg"
$OSDCloudPPKGFiles = Get-ChildItem -Path $OSDCloudPpkgDirectory -Filter "*.ppkg"


$AdvancedPPKG = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/refs/heads/main/Provisioning%20Package%20Silent%20Install%20Scripts/PPKG%20Files/Software%20Configurations/Advanced/Advanced.ps1")
Invoke-Expression $($AdvancedPPKG.Content)

Write-Host "Provisioning:$env:computername..." -ForegroundColor Cyan
Write-Host

# Loop through each .ppkg file and install it

foreach ($PS5PPKGFile in $PS5PPKGFiles) {
    Write-Host "Installing $($PS5PPKGFile.Name)..."
    Install-ProvisioningPackage -PackagePath "C:\Provisioning\PS5-Modules\PS5Modules.ppkg" -QuietInstall -ForceInstall
    Write-Host "$($PS5PPKGFile.Name) installed."
}

# Loop through each .ppkg file and install it

foreach ($PS7PPKGFile in $PS7PPKGFiles) {
    Write-Host "Installing $($PS7PPKGFile.Name)..."
    Install-ProvisioningPackage -PackagePath "C:\Provisioning\PS7-Modules\PS7Modules.ppkg" -QuietInstall -ForceInstall
    Write-Host "$($PS7PPKGFile.Name) installed."
}

# Loop through each .ppkg file and install it

foreach ($SYSTEMSoftwarePPKGFile in $SYSTEMSoftwarePPKGFiles) {
    Write-Host "Installing $($SYSTEMSoftwarePPKGFile.Name)..."
    Install-ProvisioningPackage -PackagePath "C:\Provisioning\OS\SYSTEM\SYSTEMSoftware.ppkg" -QuietInstall -ForceInstall
    Write-Host "$($SYSTEMSoftwarePPKGFile.Name) installed."
}

# Loop through each .ppkg file and install it

foreach ($NETPPKGFile in $NETPPKGFiles) {
    Write-Host "Installing $($NETPPKGFile.Name)..."
    Install-ProvisioningPackage -PackagePath "C:\Provisioning\OS\NET\NETFramework.ppkg" -QuietInstall -ForceInstall
    Write-Host "$($NETPPKGFile.Name) installed."
}

# Loop through each .ppkg file and install it

foreach ($OracleJREPPKGFile in $OracleJREPPKGFiles) {
    Write-Host "Installing $($OracleJREPPKGFile.Name)..."
    Install-ProvisioningPackage -PackagePath "C:\Provisioning\OS\OracleJRE\OracleJRE.ppkg" -QuietInstall -ForceInstall
    Write-Host "$($OracleJREPPKGFile.Name) installed."
}

# Loop through each .ppkg file and install it

foreach ($ASPPPKGFile in $ASPPPKGFiles) {
    Write-Host "Installing $($ASPPPKGFile.Name)..."
    Install-ProvisioningPackage -PackagePath "C:\Provisioning\OS\OracleJRE\ASPRedistributables.ppkg" -QuietInstall -ForceInstall
    Write-Host "$($ASPPPKGFile.Name) installed."
}

# Loop through each .ppkg file and install it
foreach ($OSDCloudPpkgFile in $OSDCloudPPKGFiles) {
    Write-Host "Installing $($OSDCloudPpkgFile.Name)..."
    Install-ProvisioningPackage -PackagePath $OSDCloudPpkgFile.FullName -QuietInstall -ForceInstall
    Write-Host "$($OSDCloudPpkgFile.Name) installed."
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





