# Define the path to the directory containing your .ppkg files
$SoftwarePpkgDirectory = "C:\Provisioning\Advanced\Software"

$ADVSoftwarePpkgFiles = Get-ChildItem -Path $SoftwarePpkgDirectory -Filter "*.ppkg"

# Retrieve OS Edition

$OSVerison = $($os.Version)
$UBR = (Get-ItemProperty 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion' -Name UBR).UBR
$FullOS = $($os.Caption)
$OSBuild = $($os.Version) + "." + $UBR
$DisplayVersion = (Get-ItemProperty 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion' -Name DisplayVersion).DisplayVersion
$EditionID = (Get-ItemProperty 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion' -Name EditionID).EditionID
$CompleteOSInfo = "$FullOS" + " $OSBuild" + " $DisplayVersion" + " $EditionID"

Write-Host "Processing:Acquiring PPKG Files for Advanced Software Configuration..." -ForegroundColor Cyan
Write-Host

$AdvancedPPKG = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/refs/heads/main/Provisioning%20Package%20Silent%20Install%20Scripts/PPKG%20Files/Software%20Configurations/Advanced/Advanced.ps1")
Invoke-Expression $($AdvancedPPKG.Content)

Write-Host "Provisioning:$env:computername..." -ForegroundColor Cyan
Write-Host

$OS = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/refs/heads/main/Provisioning%20Package%20Silent%20Install%20Scripts/PPKG%20Files/Client%20OS%20SYSTEM%20Software/SYSTEMSoftware.ps1")
Invoke-Expression $($OS.Content)

$ClientOSRegistry = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/refs/heads/main/Provisioning%20Package%20Silent%20Install%20Scripts/PPKG%20Files/Client%20OS%20Registry%20Modifications/ClientOSRegistry.ps1")
Invoke-Expression $($ClientOSRegistry.Content)

$OSDCloud2 = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/refs/heads/main/Provisioning%20Package%20Silent%20Install%20Scripts/PPKG%20Files/OSDCloud%20v2%20Pre-Requisites/OSDCloud2.ps1")
Invoke-Expression $($OSDCloud2.Content)

$ADVSoftware = Invoke-WebReuest("https://github.com/osdcloudcline/Install-Scripts/raw/refs/heads/main/Provisioning%20Package%20Silent%20Install%20Scripts/PPKG%20Files/Software%20Configurations/Advanced/ADV-PPKGInstall.ps1")
Invoke-Expression $$ADVSoftware.Content)

# Loop through each .ppkg file and install it
foreach ($PpkgFile in $PpkgFiles) {
    Write-Host "Installing $($PpkgFile.Name)..."
    Install-ProvisioningPackage -PackagePath $PpkgFile.FullName -QuietInstall -ForceInstall
    Write-Host "$($PpkgFile.Name) installed."
}

Write-Host "Processing:Scanning $env:computername for updates - $CompleteOSInfor ..." -ForegroundColor Cyan
Write-Host

Import-Module -Name PSWindowsUpdate -Force
Install-WindowsUpdate -AcceptAll
Restart-Computer





