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
$ADVSoftwarePpkgFiles = Get-ChildItem -Path $SoftwarePpkgDirectory -Filter "*.ppkg"
$OSDCloudPPKGFiles = Get-ChildItem -Path $OSDCloudPpkgDirectory -Filter "*.ppkg"

$AdvancedPPKG = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/refs/heads/main/Provisioning%20Package%20Silent%20Install%20Scripts/PPKG%20Files/Software%20Configurations/Advanced/Advanced.ps1")
Invoke-Expression $($AdvancedPPKG.Content)

Write-Host "Provisioning:$env:computername..." -ForegroundColor Cyan
Write-Host

$OS = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/refs/heads/main/Provisioning%20Package%20Silent%20Install%20Scripts/PPKG%20Files/Client%20OS%20SYSTEM%20Software/SYSTEMSoftware.ps1")
Invoke-Expression $($OS.Content)

$ClientOSRegistry = Invoke-WebRequest("")
Invoke-Expression $($ClientOSRegistry.Content)

$OSDCloud2 = Invoke-WebRequest("")
Invoke-Expression $($OSDCloud2.Content)

$ADVSoftware = Invoke-WebReuest("")
Invoke-Expression $$ADVSoftware.Content)

# Loop through each .ppkg file and install it
foreach ($PpkgFile in $PpkgFiles) {
    Write-Host "Installing $($PpkgFile.Name)..."
    Install-ProvisioningPackage -PackagePath $PpkgFile.FullName -QuietInstall -ForceInstall
    Write-Host "$($PpkgFile.Name) installed."
}



Import-Module -Name PSWindowsUpdate -Force
Install-WindowsUpdate -AcceptAll
Restart-Computer





