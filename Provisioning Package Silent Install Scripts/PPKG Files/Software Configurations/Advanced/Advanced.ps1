Install-Module -Name OSD -Force
Import-Module -Name OSD -Force

$ADVCloudStorageURL = "https://github.com/osdcloudcline/Install-Scripts/blob/main/Provisioning%20Package%20Silent%20Install%20Scripts/PPKG%20Files/Software%20Configurations/Advanced/Cloud%20Storage/Advanced%20Software%20Configuration%20-%20Cloud%20Storage.ppkg"
$ADVDevSoftwareURL = "https://github.com/osdcloudcline/Install-Scripts/raw/refs/heads/main/Provisioning%20Package%20Silent%20Install%20Scripts/PPKG%20Files/Software%20Configurations/Advanced/Development/Advanced%20Software%20Configuration%20-%20Development%20Software.ppkg"
$ADVFileTransferURL = "https://github.com/osdcloudcline/Install-Scripts/raw/refs/heads/main/Provisioning%20Package%20Silent%20Install%20Scripts/PPKG%20Files/Software%20Configurations/Advanced/File%20Transfer/Advanced%20Software%20Configuration%20-%20File%20Transfer.ppkg"
$ADVGamingURL = "https://github.com/osdcloudcline/Install-Scripts/raw/refs/heads/main/Provisioning%20Package%20Silent%20Install%20Scripts/PPKG%20Files/Software%20Configurations/Advanced/Gaming/Advanced%20Software%20Configuration%20-%20PC%20Gaming.ppkg"
$ADVWebBrowsingURL = "https://github.com/osdcloudcline/Install-Scripts/raw/refs/heads/main/Provisioning%20Package%20Silent%20Install%20Scripts/PPKG%20Files/Software%20Configurations/Advanced/Web%20Browsing/Advanced%20Software%20Configuration%20-%20Web%20Browsers.ppkg"
$HWSoftwareURL = ""
$ADVMediaURL = ""
$ADVProgrammingURL = "https://github.com/osdcloudcline/Install-Scripts/raw/refs/heads/main/Provisioning%20Package%20Silent%20Install%20Scripts/PPKG%20Files/Software%20Configurations/Advanced/Programming/Advanced%20Software%20Configuration%20-%20Programming.ppkg"
$ADVProductivityURL = ""
$ADVUtilitiesSoftwareURL = ""
$ADVSecurityURL = ""


$OSSystemSoftwareURL = ""

$destination = "C:\Provisioning\Advanced\Software"
$OSdestination = "C:\Provisioning\OS"

Write-Verbose "Processing: Acquiring Client Operating System SYSTEM Software Configuration PPKG File" - Verbose
Save-WebFile -SourceUrl $OSSystemSoftwareURL -DestrinationDirectory $OSdestination
Write-Host
Write-Verbose "Processing: Acquiring Advanced Software Configuration - Cloud Storage PPKG File" - Verbose
Save-WebFile -SourceUrl $ADVCloudStorageURL -DestrinationDirectory $destination
Write-Host
Write-Verbose "Processing: Acquiring Advanced Software Configuration - Development Software PPKG File" - Verbose
Save-WebFile -SourceUrl $ADVDevSoftwareURL -DestrinationDirectory $destination
Write-Host
Write-Verbose "Processing: Acquiring Advanced Software Configuration - File Transfer Software PPKG File" - Verbose
Save-WebFile -SourceUrl $ADVFileTransferURL -DestrinationDirectory $destination
Write-Host
Write-Verbose "Processing: Acquiring Advanced Software Configuration - Hardware relateds Software PPKG File" - Verbose
Save-WebFile -SourceUrl $HWSoftwareURL -DestrinationDirectory $destination
Write-Host
Write-Verbose "Processing: Acquiring Advanced Software Configuration - Gaming Software PPKG File" - Verbose
Save-WebFile -SourceUrl $ADVGamingURL -DestrinationDirectory $destination
Write-Host
Write-Verbose "Processing: Acquiring Advanced Software Configuration - Media Software PPKG File" - Verbose
Save-WebFile -SourceUrl $ADVMediaURL -DestrinationDirectory $destination
Write-Host
Write-Verbose "Processing: Acquiring Advanced Software Configuration - Programming Software PPKG File" - Verbose
Save-WebFile -SourceUrl $ADVProgrammingURL -DestrinationDirectory $destination
Write-Host
Write-Verbose "Processing: Acquiring Advanced Software Configuration - Productivity Software PPKG File" - Verbose
Save-WebFile -SourceUrl  -DestrinationDirectory $destination
Write-Host
Write-Verbose "Processing: Acquiring Advanced Software Configuration - Utility Software PPKG File" - Verbose
Save-WebFile -SourceUrl $ADVProgrammingURL -DestrinationDirectory $destination
Write-Host
Write-Verbose "Processing: Acquiring Advanced Software Configuration - Web Browsing Software PPKG File" - Verbose
Save-WebFile -SourceUrl $ADVWebBrowsingURL -DestrinationDirectory $destination
Write-Host
Write-Verbose "Processing: Acquiring Advanced Software Configuration - Security Software PPKG File" - Verbose
Save-WebFile -SourceUrl $ADVSecurityURL -DestrinationDirectory $destination
