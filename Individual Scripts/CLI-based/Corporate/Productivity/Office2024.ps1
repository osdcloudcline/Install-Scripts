Start-Transcript -Path "C:\Logs\OSDCloud\Install\Corporate\Productivity\$env:computername-Office2024.log"

Install-Module -Name OSD -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name OSD -Force

$OfficeGHdownloads = "C:\Office\2024" 
mkdir $OfficeGHdownloads
$Office2024Files1Url = "https://github.com/osdcloudcline/Software/raw/refs/heads/main/Productivity/Microsoft/Office%202024/Configuration-Office2024-EntireSuiteVL.xml"
$Office2024Files2Url = "https://github.com/osdcloudcline/Software/raw/refs/heads/main/Productivity/Microsoft/Office%202024/officedeploymenttool_18227-20162.exe"
$Office2024Files3Url = "https://github.com/osdcloudcline/Software/raw/refs/heads/main/Productivity/Microsoft/Office%202024/setup.exe"


Save-WebFile -SourceUrl $Office2024Files1Url -DestinationDirectory $OfficeGHdownloads
Save-WebFile -SourceUrl $Office2024Files2Url -DestinationDirectory $OfficeGHdownloads
Save-WebFile -SourceUrl $Office2024Files3Url -DestinationDirectory $OfficeGHdownloads

Stop-Transcript
