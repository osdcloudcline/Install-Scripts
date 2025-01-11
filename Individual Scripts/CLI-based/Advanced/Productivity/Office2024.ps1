Install-Module -Name OSD -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name OSD -Force

$OfficeGHdownloads = "C:\downloads\Office\2024" 
mkdir $OfficeGHdownloads

$Office2024Files2Url = "https://github.com/osdcloudcline/Software/raw/refs/heads/main/Productivity/Microsoft/Office%202024/OfficeProPlus2024-OfficeSetup.exe"
$Office2024Files3Url = "https://github.com/osdcloudcline/Software/raw/refs/heads/main/Productivity/Microsoft/Office%202024/ProjectPro2024-OfficeSetup.exe"
$Office2024Files4Url = "https://github.com/osdcloudcline/Software/raw/refs/heads/main/Productivity/Microsoft/Office%202024/VisioPro2024-OfficeSetup.exe"

Save-WebFile -SourceUrl $Office2024Files2Url -DestinationDirectory $OfficeGHdownloads
Save-WebFile -SourceUrl $Office2024Files3Url -DestinationDirectory $OfficeGHdownloads
Save-WebFile -SourceUrl $Office2024Files4Url -DestinationDirectory $OfficeGHdownloads


