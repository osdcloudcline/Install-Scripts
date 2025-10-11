Install-Module -Name OSD -Force
Import-Module -Name OSD -Force

$PS5Modules = "https://github.com/osdcloudcline/Install-Scripts/raw/refs/heads/main/Provisioning%20Package%20Silent%20Install%20Scripts/PPKG%20Files/PowerShell%20Modules/Install/Install%20Client%20OS%20SYSTEM%20PowerShell%20Modules.ppkg"
$PS7Modules = "https://github.com/osdcloudcline/Install-Scripts/raw/refs/heads/main/Provisioning%20Package%20Silent%20Install%20Scripts/PPKG%20Files/PowerShell%20Modules/Install/Install%20Client%20OS%20SYSTEM%20PowerShell%207.x%20Modules.ppkg"
$ADVCloudStorage = "https://github.com/osdcloudcline/Install-Scripts/blob/main/Provisioning%20Package%20Silent%20Install%20Scripts/PPKG%20Files/Software%20Configurations/Advanced/Cloud%20Storage/Advanced%20Software%20Configuration%20-%20Cloud%20Storage.ppkg"
$ADVDevSoftware = "https://github.com/osdcloudcline/Install-Scripts/raw/refs/heads/main/Provisioning%20Package%20Silent%20Install%20Scripts/PPKG%20Files/Software%20Configurations/Advanced/Development/Advanced%20Software%20Configuration%20-%20Development%20Software.ppkg"
$ADVFileTransfer = "https://github.com/osdcloudcline/Install-Scripts/raw/refs/heads/main/Provisioning%20Package%20Silent%20Install%20Scripts/PPKG%20Files/Software%20Configurations/Advanced/File%20Transfer/Advanced%20Software%20Configuration%20-%20File%20Transfer.ppkg"
$ADVGaming = "https://github.com/osdcloudcline/Install-Scripts/raw/refs/heads/main/Provisioning%20Package%20Silent%20Install%20Scripts/PPKG%20Files/Software%20Configurations/Advanced/Gaming/Advanced%20Software%20Configuration%20-%20PC%20Gaming.ppkg"
$ADVWebBrowsing = "https://github.com/osdcloudcline/Install-Scripts/raw/refs/heads/main/Provisioning%20Package%20Silent%20Install%20Scripts/PPKG%20Files/Software%20Configurations/Advanced/Web%20Browsing/Advanced%20Software%20Configuration%20-%20Web%20Browsers.ppkg"
$HWSoftware = "https://github.com/osdcloudcline/Install-Scripts/blob/main/Provisioning%20Package%20Silent%20Install%20Scripts/PPKG%20Files/Software%20Configurations/Advanced/System%20Hardware-related%20Software/Advanced%20Software%20Configuration%20-%20System%20Hardware%20Utilities.ppkg"
$ADVMedia = "https://github.com/osdcloudcline/Install-Scripts/blob/main/Provisioning%20Package%20Silent%20Install%20Scripts/PPKG%20Files/Software%20Configurations/Advanced/Media/Advanced%20Software%20Configuration%20-%20Media%20Software.ppkg"
$ADVProgramming = "https://github.com/osdcloudcline/Install-Scripts/raw/refs/heads/main/Provisioning%20Package%20Silent%20Install%20Scripts/PPKG%20Files/Software%20Configurations/Advanced/Programming/Advanced%20Software%20Configuration%20-%20Programming.ppkg"
$ADVProductivity = "https://github.com/osdcloudcline/Install-Scripts/raw/refs/heads/main/Provisioning%20Package%20Silent%20Install%20Scripts/PPKG%20Files/Software%20Configurations/Advanced/Productivity/Advanced%20Software%20Installation%20-%20Productivity%20Software.ppkg"
$ADVUtilitiesSoftware = ""
$ADVSecurity = "https://github.com/osdcloudcline/Install-Scripts/raw/refs/heads/main/Provisioning%20Package%20Silent%20Install%20Scripts/PPKG%20Files/Software%20Configurations/Advanced/Security/Advanced%20Software%20Configuration%20-%20Security%20Software.ppkg"
$PCBenchmarking = ""
$OSDCloud2 = "https://github.com/osdcloudcline/Install-Scripts/raw/refs/heads/main/Provisioning%20Package%20Silent%20Install%20Scripts/PPKG%20Files/OSDCloud%20v2%20Pre-Requisites/OSDCloud%20Version%202.0.ppkg"

$OSSystemSoftware = "https://github.com/osdcloudcline/Install-Scripts/blob/main/Provisioning%20Package%20Silent%20Install%20Scripts/PPKG%20Files/Client%20OS%20SYSTEM%20Software/Client%20OS%20SYSTEM%20SOFTWARE.ppkg"

$destination = "C:\Provisioning\Advanced\Software"
$PS5destination = "C:\Provisioning\PS5-Modules"
$PS7destination = "C:\Provisioning\PS7-Modules"
$OSdestination = "C:\Provisioning\OS"
$OSDClouddestination = "C:\Provisioning\OSDCloud"

Write-Verbose "Processing: Acquiring Client Operating System SYSTEM Software Configuration PPKG File" -Verbose
Save-WebFile -SourceUrl $OSSystemSoftware -DestinationDirectory $OSdestination
Write-Host
Write-Verbose "Processing: Acquiring Client Operating System SYSTEM PowerShell 5.1 Package Providers and Modules PPKG File" -Verbose
Save-WebFile -SourceUrl $PS5Modules -DestinationDirectory $PS5destination
Write-Host
Write-Verbose "Processing: Acquiring Client Operating System SYSTEM PowerShell 7.x Modules PPKG File" -Verbose
Save-WebFile -SourceUrl $PS7Modules  -DestinationDirectory $PS7destination
Write-Host
Write-Verbose "Processing: Acquiring OSDCloud Version 2.0 PPKG File" -Verbose
Save-WebFile -SourceUrl $OSDCloud2 -DestinationDirectory $OSDClouddestination
Write-Host
Write-Verbose "Processing: Acquiring Advanced Software Configuration - Cloud Storage PPKG File" -Verbose
Save-WebFile -SourceUrl $ADVCloudStorage -DestinationDirectory $destination
Write-Host
Write-Verbose "Processing: Acquiring Advanced Software Configuration - Development Software PPKG File" -Verbose
Save-WebFile -SourceUrl $ADVDevSoftware -DestinationDirectory $destination
Write-Host
Write-Verbose "Processing: Acquiring Advanced Software Configuration - File Transfer Software PPKG File" -Verbose
Save-WebFile -SourceUrl $ADVFileTransfer -DestinationDirectory $destination
Write-Host
Write-Verbose "Processing: Acquiring Advanced Software Configuration - Hardware-related Software PPKG File" -Verbose
Save-WebFile -SourceUrl $HWSoftware -DestinationDirectory $destination
Write-Host
Write-Verbose "Processing: Acquiring Advanced Software Configuration - Gaming Software PPKG File" -Verbose
Save-WebFile -SourceUrl $ADVGaming -DestinationDirectory $destination
Write-Host
Write-Verbose "Processing: Acquiring Advanced Software Configuration - Media Software PPKG File" -Verbose
Save-WebFile -SourceUrl $ADVMedia -DestinationDirectory $destination
Write-Host
Write-Verbose "Processing: Acquiring Advanced Software Configuration - Programming Software PPKG File" -Verbose
Save-WebFile -SourceUrl $ADVProgramming -DestinationDirectory $destination
Write-Host
Write-Verbose "Processing: Acquiring Advanced Software Configuration - Productivity Software PPKG File" -Verbose
Save-WebFile -SourceUrl $ADVProductivity  -DestinationDirectory $destination
Write-Host
Write-Verbose "Processing: Acquiring Advanced Software Configuration - Utility Software PPKG File" -Verbose
Save-WebFile -SourceUrl $ADVProgrammingURL -DestinationDirectory $destination
Write-Host
Write-Verbose "Processing: Acquiring Advanced Software Configuration - PC Benchmarking Software PPKG File" -Verbose
Save-WebFile -SourceUrl $PCBenchmarking -DestinationDirectory $destination
Write-Host
Write-Verbose "Processing: Acquiring Advanced Software Configuration - Web Browsing Software PPKG File" -Verbose
Save-WebFile -SourceUrl $ADVWebBrowsing -DestinationDirectory $destination
Write-Host
Write-Verbose "Processing: Acquiring Advanced Software Configuration - Security Software PPKG File" -Verbose
Save-WebFile -SourceUrl $ADVSecurity -DestinationDirectory $destination
Write-Host

Write-Verbose "Processing: Renaming PPKG Files..." -Verbose
Write-Host
Rename-Item -Path "C:\Provisioning\PS5-Modules\Install%20Client%20OS%20SYSTEM%20PowerShell%20Modules.ppkg" -NewName "C:\Provisioning\PS5-Modules\Install Client OS SYSTEM PowerShell Modules.ppkg"
Rename-Item -Path "C:\Provisioning\PS7-Modules\Install%20Client%20OS%20SYSTEM%20PowerShell%207.x%20Modules.ppkg" -NewName "C:\Provisioning\PS7-Modules\Install Client OS SYSTEM PowerShell 7 Modules.ppkg" -Force
Rename-Item -Path "C:\Provisioning\Advanced\Software\Advanced%20Software%20Configuration%20-%20Cloud%20Storage.ppkg" -NewName "C:\Provisioning\Advanced\Software\Advanced Software Configuration Cloud Storage.ppkg"
Rename-Item -Path "C:\Provisioning\Advanced\Software\Advanced%20Software%20Configuration%20-%20Development%20Software.ppkg" -NewName "C:\Provisioning\Advanced\Software\Advanced Software Configuration Development Software.ppkg"
Rename-Item -Path "C:\Provisioning\Advanced\Software\Advanced%20Software%20Configuration%20-%20File%20Transfer.ppkg" -NewName "C:\Provisioning\Advanced\Software\Advanced Software Configuration File Transfer.ppkg"
Rename-Item -Path "C:\Provisioning\Advanced\Software\Advanced%20Software%20Configuration%20-%20PC%20Gaming.ppkg" -NewName "C:\Provisioning\Advanced\Software\Advanced Software Configuration PC Gaming.ppkg"
Rename-Item -Path "C:\Provisioning\Advanced\Software\Advanced%20Software%20Configuration%20-%20Web%20Browsers.ppkg" -NewName "C:\Provisioning\Advanced\Software\Advanced Software Configuration Web Browsers.ppkg"
Rename-Item -Path "C:\Provisioning\Advanced\Software\Advanced%20Software%20Configuration%20-%20System%20Hardware%20Utilities.ppkg" -NewName "C:\Provisioning\Advanced\Software\Advanced Software Configuration System Hardware Utilities.ppkg"
Rename-Item -Path "C:\Provisioning\Advanced\Software\Advanced%20Software%20Configuration%20-%20Media%20Software.ppkg" -NewName "C:\Provisioning\Advanced\Software\Advanced Software Configuration Media Software.ppkg"
Rename-Item -Path "C:\Provisioning\Advanced\Software\Advanced%20Software%20Configuration%20-%20Programming.ppkg" -NewName "C:\Provisioning\Advanced\Software\Advanced Software Configuration Programming.ppkg"
Rename-Item -Path "C:\Provisioning\Advanced\Software\Advanced%20Software%20Installation%20-%20Productivity%20Software.ppkg" -NewName "C:\Provisioning\Advanced\Software\Advanced Software Installation Productivity Software.ppkg"
Rename-Item -Path "C:\Provisioning\Advanced\Software\Advanced%20Software%20Configuration%20-%20Security%20Software.ppkg" -NewName "C:\Provisioning\Advanced\Software\Advanced Software Configuration Security Software.ppkg"
Rename-Item -Path "C:\Provisioning\OSDCloud\OSDCloud%20Version%202.0.ppkg" -NewName "C:\Provisioning\OSDCloud\OSDCloud Version 2.0.ppkg"
Rename-Item -Path "C:\Provisioning\OS\Client%20OS%20SYSTEM%20SOFTWARE.ppkg" -NewName "C:\Provisioning\OS\Client OS SYSTEM SOFTWARE.ppkg"

