# Define OSD PowerShell Modules array

$OSD = @(
'OSD',
'OSDBuilder',
'OSDSUS',
'OSDUpdate',
'AutopilotOOBE',
'OSDDrivers',
'OSDEploy',
'OSDSoftware',
'OSDCatalog',
'OSDProgress',
'PSWindowsUpdate'
)

# Define OSDCloud version 2.0 specific related PowerShell Modules array

$OSDCloud2 = @(
'OSDCloud',
'OSDCloud.Workspace',
'platyPS',
)

# Define Cloud related PowerShell Modules array 

$Cloud = @(
'OSDCloudCLI',
'OSDCloudGUI',
'OSDCloudAzure',
'Azure',
'AzureAD',
'Az.Accounts',
'Az.Storage',
'Az.Resources',
'Az.KeyVault',
'Az.Compute',
'Az.Automation',
'Az.Network',
'Az.ApiManagement',
'Az.Advisor',
'Az.AnalysisServices',
'Az.Billing',
'Az.ApplicationInsights',
'Az.Cdn',
'Az.Batch',
'Az.Monitor'
)

# Define MS Graph PowerShell Modules

$MSGraph = @(
'Microsoft.Graph',
'Microsoft.Graph.Intune',
'Microsoft.Graph.Groups',
'Microsoft.Graph.Users',
'Microsoft.Graph.Sites'
'Microsoft.Graph.Mail',
'Microsoft.Graph.Identity.DirectoryManagement',
'Microsoft.Graph.Teams',
'Microsoft.Graph.DeviceManagement'
)

# Define VMWare Virtualization modules

$VMWareVirtualization = @(
'AsBuiltReport.VMware.ESXi',
'EsxiInventoryTools',
'VMwareBaselineCheck',
'WindowsImageBuilder',
'vDocumentation'
)

# Define Hyper-V PowerShell Modules

$HyperVVirtualization = @(
'LabBuilder',
'Hyper-V-Backup',
'Hyper-V.Tools',
'Image-Factory',
'HyperVLab',
'AutomatedLab',
'Hyper-VAdministration',
'WindowsImageConverter'
)

# Define UNIFI PowerShell modules

$UbiquitiUNIFI = @(
'UNIFI'
)

# Define Networking modules

$Networking = @(
'wifiprofilemanagement',
'WiFiProfileManagementDsc',
'WifiTools'
)

# Define Deployment Modules

$OSDDeployment = @(
'SCClient',
'SCCMClientActions',
'SCCMStuff'
)

# Define Utilities PowerShell modules

$Utilities = @(
'7Zip4Powershell'
)

foreach ($module in $OSD){

Write-Host "Processing: $module PowerShell Module for installtion" -ForegroundColor Cyan
Write-Host 
        Install-Module -Name $module -Force -AllowClobber -Repository PSGallery -SkipPublisherCheck
Write-Host
Write-Host "Processing: $module PowerShell Module for import" -ForegroundColor Cyan
       Import-Module -Name $module -Force
Write-Host 
Write-Host "Completed configuration of: $module" -ForegroundColor Green
)

foreach ($module in $OSDCloud2){

Write-Host "Processing: $module PowerShell Module for installtion" -ForegroundColor Cyan
Write-Host 
        Install-Module -Name $module -Force -AllowClobber -Repository PSGallery -SkipPublisherCheck
Write-Host
Write-Host "Processing: $module PowerShell Module for import" -ForegroundColor Cyan
       Import-Module -Name $module -Force
Write-Host 
Write-Host "Completed configuration of: $module" -ForegroundColor Green
)

foreach ($module in $Cloud){

Write-Host "Processing: $module PowerShell Module for installtion" -ForegroundColor Cyan
Write-Host 
        Install-Module -Name $module -Force -AllowClobber -Repository PSGallery -SkipPublisherCheck
Write-Host
Write-Host "Processing: $module PowerShell Module for import" -ForegroundColor Cyan
       Import-Module -Name $module -Force
Write-Host 
Write-Host "Completed configuration of: $module" -ForegroundColor Green
)

foreach ($module in $MSGraph){

Write-Host "Processing: $module PowerShell Module for installtion" -ForegroundColor Cyan
Write-Host 
        Install-Module -Name $module -Force -AllowClobber -Repository PSGallery -SkipPublisherCheck
Write-Host
Write-Host "Processing: $module PowerShell Module for import" -ForegroundColor Cyan
       Import-Module -Name $module -Force
Write-Host 
Write-Host "Completed configuration of: $module" -ForegroundColor Green
)

foreach ($module in $VMWareVirtualization){

Write-Host "Processing: $module PowerShell Module for installtion" -ForegroundColor Cyan
Write-Host 
        Install-Module -Name $module -Force -AllowClobber -Repository PSGallery -SkipPublisherCheck
Write-Host
Write-Host "Processing: $module PowerShell Module for import" -ForegroundColor Cyan
       Import-Module -Name $module -Force
Write-Host 
Write-Host "Completed configuration of: $module" -ForegroundColor Green
)

foreach ($module in $HyperVVirtualization){

Write-Host "Processing: $module PowerShell Module for installtion" -ForegroundColor Cyan
Write-Host 
        Install-Module -Name $module -Force -AllowClobber -Repository PSGallery -SkipPublisherCheck
Write-Host
Write-Host "Processing: $module PowerShell Module for import" -ForegroundColor Cyan
       Import-Module -Name $module -Force
Write-Host 
Write-Host "Completed configuration of: $module" -ForegroundColor Green
)

foreach ($module in $UbiquitiUNIFI){

Write-Host "Processing: $module PowerShell Module for installtion" -ForegroundColor Cyan
Write-Host 
        Install-Module -Name $module -Force -AllowClobber -Repository PSGallery -SkipPublisherCheck
Write-Host
Write-Host "Processing: $module PowerShell Module for import" -ForegroundColor Cyan
       Import-Module -Name $module -Force
Write-Host 
Write-Host "Completed configuration of: $module" -ForegroundColor Green
)

foreach ($module in $Networking){

Write-Host "Processing: $module PowerShell Module for installtion" -ForegroundColor Cyan
Write-Host 
        Install-Module -Name $module -Force -AllowClobber -Repository PSGallery -SkipPublisherCheck
Write-Host
Write-Host "Processing: $module PowerShell Module for import" -ForegroundColor Cyan
       Import-Module -Name $module -Force
Write-Host 
Write-Host "Completed configuration of: $module" -ForegroundColor Green
)

foreach ($module in $OSDDeployment){

Write-Host "Processing: $module PowerShell Module for installtion" -ForegroundColor Cyan
Write-Host 
        Install-Module -Name $module -Force -AllowClobber -Repository PSGallery -SkipPublisherCheck
Write-Host
Write-Host "Processing: $module PowerShell Module for import" -ForegroundColor Cyan
       Import-Module -Name $module -Force
Write-Host 
Write-Host "Completed configuration of: $module" -ForegroundColor Green
)

foreach ($module in $Utilities){

Write-Host "Processing: $module PowerShell Module for installtion" -ForegroundColor Cyan
Write-Host 
        Install-Module -Name $module -Force -AllowClobber -Repository PSGallery -SkipPublisherCheck
Write-Host
Write-Host "Processing: $module PowerShell Module for import" -ForegroundColor Cyan
       Import-Module -Name $module -Force
Write-Host 
Write-Host "Completed configuration of: $module" -ForegroundColor Green
)
