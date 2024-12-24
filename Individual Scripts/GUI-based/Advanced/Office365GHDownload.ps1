Install-Module -Name OSD -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name OSD -Force

$OfficeGHdownloads = "C:\downloads\Office\2024" 
mkdir $OfficeGHdownloads
$Office365Files1Url = "https://github.com/osdcloudcline/Software/raw/refs/heads/main/Productivity/Microsoft/Office%202024/Office2024.zip"
$Office365Files2Url = "https://github.com/osdcloudcline/Software/raw/refs/heads/main/Productivity/Microsoft/Office%202024/Office365ProPlus-OfficeSetup.exe"
$Office2024Files3Url = "https://github.com/osdcloudcline/Software/raw/refs/heads/main/Productivity/Microsoft/Office%202024/ProjectPro2024-OfficeSetup.exe"
$Office2024Files4Url = "https://github.com/osdcloudcline/Software/raw/refs/heads/main/Productivity/Microsoft/Office%202024/VisioPro2024-OfficeSetup.exe"

Save-WebFile -SourceUrl $Office365Files1Url -DestinationDirectory $OfficeGHdownloads
Save-WebFile -SourceUrl $Office365Files2Url -DestinationDirectory $OfficeGHdownloads
Save-WebFile -SourceUrl $Office2024Files3Url -DestinationDirectory $OfficeGHdownloads
Save-WebFile -SourceUrl $Office2024Files4Url -DestinationDirectory $OfficeGHdownloads

Expand-Archive -Path "$OfficeGHdownloads\Office2024.zip" -DestinationPath $OfficeGHdownloads
