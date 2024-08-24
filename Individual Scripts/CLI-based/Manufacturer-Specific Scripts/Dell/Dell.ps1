$DellModule1 = "Dell BIOS Provider"
$DellModule2 = "Get BIOS"
$DellModule3 = "Dell Warranty"
$DellModule4 = "Dell Power Store"
$DellModule5 = "Dell Open Manage"
$DellModule6 = "Dell Warranty Service Tag"
$DellModule7 = "Dell Unity"
$DellModule8 = "Dell Power Max"
$DellModule9 = "Dell BIOS"
$DellModule10 = "Set BIOS"
$DellModule11 = "Dell Warranty"
$DellModule12 = "Dell Support Info"
$DellModule13 = "Get Dell Driver Packs"
$DellModule14 = "Dell BIOS Driver"

Install-Module -Name OSD -Repository PSGallery -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name OSD -Force

$MfrGroup1 = "Dell PowerShell"

Write-Host "Installing $MfrGroup1 Modules..." -ForegroundColor Cyan
Write-Host
Write-Host
Write-Verbose "Installing: $DellModule1..." -Verbose
Write-Host
Install-Module -Name DellBIOSProvider -Force -AllowClobber -SkipPublisherCheck
Start-Sleep -Seconds 5
Write-Verbose "Importing: $DellModule1..." -Verbose
Write-Host
Import-Module -Name DellBIOSProvider -Force

Write-Verbose "Installing: $DellModule2..." -Verbose
Write-Host
Install-Module -Name GetBIOS -Force -AllowClobber -SkipPublisherCheck
Start-Sleep -Seconds 5
Write-Verbose "Importing: $DellModule2..." -Verbose
Write-Host
Import-Module -Name GetBIOS -Force

Write-Verbose "Installing: $DellModule3..." -Verbose
Write-Host
Install-Module -Name Get-DellWarranty -Force -AllowClobber -SkipPublisherCheck
Start-Sleep -Seconds 5
Write-Verbose "Importing: $DellModule3..." -Verbose
Write-Host
Import-Module -Name Get-DellWarranty -Force

Write-Verbose "Installing: $DellModule4..." -Verbose
Write-Host
Install-Module -Name Dell.PowerStore -Force -AllowClobber -SkipPublisherCheck
Start-Sleep -Seconds 5
Write-Verbose "Importing: $DellModule4..." -Verbose
Write-Host
Import-Module -Name Dell.PowerStore -Force

Write-Verbose "Installing: $DellModule5..." -Verbose
Write-Host
Install-Module -Name DellOpenManage -Force -AllowClobber -SkipPublisherCheck
Start-Sleep -Seconds 5
Write-Verbose "Importing: $DellModule5..." -Verbose
Write-Host
Import-Module -Name DellOpenManage -Force

Write-Verbose "Installing: $DellModule6..." -Verbose
Write-Host
Install-Module -Name DellWarrantyServiceTag -Force -AllowClobber -SkipPublisherCheck
Start-Sleep -Seconds 5
Write-Verbose "Importing: $DellModule6..." -Verbose
Write-Host
Import-Module -Name DellWarrantyServiceTag -Force

Write-Verbose "Installing: $DellModule7..." -Verbose
Write-Host
Install-Module -Name Dell.Unity -Force -AllowClobber -SkipPublisherCheck
Start-Sleep -Seconds 5
Write-Verbose "Importing: $DellModule7..." -Verbose
Write-Host
Import-Module -Name Dell.Unity -Force

Write-Verbose "Installing: $DellModule8..." -Verbose
Write-Host
Install-Module -Name Dell.PowerMax -Force -AllowClobber -SkipPublisherCheck
Start-Sleep -Seconds 5
Write-Verbose "Importing: $DellModule8..." -Verbose
Write-Host
Import-Module -Name Dell.PowerMax -Force

Write-Verbose "Installing: $DellModule9..." -Verbose
Write-Host
Install-Module -Name DellBios -Force -AllowClobber -SkipPublisherCheck
Start-Sleep -Seconds 5
Write-Verbose "Importing: $DellModule9..." -Verbose
Write-Host
Import-Module -Name DellBios -Force

Write-Verbose "Installing: $DellModule10..." -Verbose
Write-Host
Install-Module -Name SetBIOS -Force -AllowClobber -SkipPublisherCheck
Start-Sleep -Seconds 5
Write-Verbose "Importing: $DellModule10..." -Verbose
Write-Host
Import-Module -Name SetBIOS -Force

Write-Verbose "Installing: $DellModule11..." -Verbose
Write-Host
Install-Module -Name DellWarranty -Force -AllowClobber -SkipPublisherCheck
Start-Sleep -Seconds 5
Write-Verbose "Importing: $DellModule11..." -Verbose
Write-Host
Import-Module -Name DellWarranty -Force

Write-Verbose "Installing: $DellModule12..." -Verbose
Write-Host
Install-Module -Name Get-DellSupportInfo -Force -AllowClobber -SkipPublisherCheck
Start-Sleep -Seconds 5
Write-Verbose "Importing: $DellModule12..." -Verbose
Write-Host
Import-Module -Name Get-DellSupportInfo -Force

Write-Verbose "Installing: $DellModule13..." -Verbose
Write-Host
Install-Module -Name Get-DriversPackFromDell -Force -AllowClobber -SkipPublisherCheck
Start-Sleep -Seconds 5
Write-Verbose "Importing: $DellModule13..." -Verbose
Write-Host
Import-Module -Name Get-DriversPackFromDell -Force

Write-Verbose "Installing: $DellModule14..." -Verbose
Write-Host
Install-Module -Name Dell-BIOSDriver -Force -AllowClobber -SkipPublisherCheck
Start-Sleep -Seconds 5
Write-Verbose "Importing: $DellModule14..." -Verbose
Write-Host
Import-Module -Name Dell-BIOSDriver -Force

$DellSoftware1 = "Dell Command | Update for Windows Universal Application"
$DellSoftware2 = "Dell Command | Update"
$DellSoftware3 = "Dell Display Manager"
$DellSoftware4 = "Dell Command | Configure"
$DellSoftware5 = "Dell Digital Delivery"

$MfrSoftwareGroup1 = "Dell OEM"

Write-Host "Installing $MfrSoftwareGroup1 Software..." -ForegroundColor Cyan
Write-Host
Write-Host
Write-Verbose "Installing: $DellSoftware1..." -Verbose
Write-Host
winget install --id Dell.CommandUpdate.Universal --accept-source-agreements  --accept-source-agreements --force

Write-Verbose "Installing: $DellSoftware2..." -Verbose
Write-Host
winget install --id Dell.CommandUpdate --accept-source-agreements  --accept-source-agreements --force

Write-Verbose "Installing: $DellSoftware3..." -Verbose
Write-Host
winget install --id Dell.DisplayManager --accept-source-agreements  --accept-source-agreements --force

Write-Verbose "Installing: $DellSoftware4..." -Verbose
Write-Host
winget install --id Dell.CommandConfigure --accept-source-agreements  --accept-source-agreements --force

Write-Verbose "Installing: $DellSoftware5..." -Verbose
Write-Host
winget install --id 9PPRLNT023WC --accept-source-agreements  --accept-source-agreements --force

