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

Write-Verbose "Processing: Acquiring Client Operating System SYSTEM Software Configuration PPKG File" - Verbose
Save-WebFile -SourceUrl $OSSystemSoftware -DestrinationDirectory $OSdestination
Write-Host
Write-Verbose "Processing: Acquiring Client Operating System SYSTEM PowerShell 5.1 Package Providers and Modules PPKG File" - Verbose
Save-WebFile -SourceUrl $PS5Modules -DestrinationDirectory $PS5destination
Write-Host
Write-Verbose "Processing: Acquiring Client Operating System SYSTEM PowerShell 7.x Modules PPKG File" - Verbose
Save-WebFile -SourceUrl $PS7Modules  -DestrinationDirectory $PS7destination
Write-Host
Write-Verbose "Processing: Acquiring OSDCloud Version 2.0 PPKG File" - Verbose
Save-WebFile -SourceUrl $OSDCloud2 -DestrinationDirectory $OSDClouddestination
Write-Host
Write-Verbose "Processing: Acquiring Advanced Software Configuration - Cloud Storage PPKG File" - Verbose
Save-WebFile -SourceUrl $ADVCloudStorage -DestrinationDirectory $destination
Write-Host
Write-Verbose "Processing: Acquiring Advanced Software Configuration - Development Software PPKG File" - Verbose
Save-WebFile -SourceUrl $ADVDevSoftware -DestrinationDirectory $destination
Write-Host
Write-Verbose "Processing: Acquiring Advanced Software Configuration - File Transfer Software PPKG File" - Verbose
Save-WebFile -SourceUrl $ADVFileTransfer -DestrinationDirectory $destination
Write-Host
Write-Verbose "Processing: Acquiring Advanced Software Configuration - Hardware relateds Software PPKG File" - Verbose
Save-WebFile -SourceUrl $HWSoftware -DestrinationDirectory $destination
Write-Host
Write-Verbose "Processing: Acquiring Advanced Software Configuration - Gaming Software PPKG File" - Verbose
Save-WebFile -SourceUrl $ADVGaming -DestrinationDirectory $destination
Write-Host
Write-Verbose "Processing: Acquiring Advanced Software Configuration - Media Software PPKG File" - Verbose
Save-WebFile -SourceUrl $ADVMedia -DestrinationDirectory $destination
Write-Host
Write-Verbose "Processing: Acquiring Advanced Software Configuration - Programming Software PPKG File" - Verbose
Save-WebFile -SourceUrl $ADVProgramming -DestrinationDirectory $destination
Write-Host
Write-Verbose "Processing: Acquiring Advanced Software Configuration - Productivity Software PPKG File" - Verbose
Save-WebFile -SourceUrl $ADVProductivity  -DestrinationDirectory $destination
Write-Host
Write-Verbose "Processing: Acquiring Advanced Software Configuration - Utility Software PPKG File" - Verbose
Save-WebFile -SourceUrl $ADVProgrammingURL -DestrinationDirectory $destination
Write-Host
Write-Verbose "Processing: Acquiring Advanced Software Configuration - PC Benchmarking Software PPKG File" - Verbose
Save-WebFile -SourceUrl $PCBenchmarking -DestrinationDirectory $destination
Write-Host
Write-Verbose "Processing: Acquiring Advanced Software Configuration - Web Browsing Software PPKG File" - Verbose
Save-WebFile -SourceUrl $ADVWebBrowsing -DestrinationDirectory $destination
Write-Host
Write-Verbose "Processing: Acquiring Advanced Software Configuration - Security Software PPKG File" - Verbose
Save-WebFile -SourceUrl $ADVSecurity -DestrinationDirectory $destination
Write-Host






