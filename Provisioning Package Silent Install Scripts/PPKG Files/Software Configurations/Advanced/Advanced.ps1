Install-Module -Name OSD -Force
Import-Module -Name OSD -Force

$ADVCloudStorageURL = "https://github.com/osdcloudcline/Install-Scripts/blob/main/Provisioning%20Package%20Silent%20Install%20Scripts/PPKG%20Files/Software%20Configurations/Advanced/Cloud%20Storage/Advanced%20Software%20Configuration%20-%20Cloud%20Storage.ppkg"
$ADVDevSoftwareURL = ""
$ADVFileTransferURL = ""
$ADVGamingURL = ""
$ADVWebBrowsingURL = ""
$HWSoftwareURL = ""
$ADVMediaURL = ""
$ADVProgrammingURL = ""
$ADVProductivityURL = ""
$ADVUtilitiesSoftwareURL + ""
$ADVSecurityURL = ""


$OSSystemSoftwareURL = ""

$destination = "C:\Provisioning\Advanced\Software"
$OSdestination = ""

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
