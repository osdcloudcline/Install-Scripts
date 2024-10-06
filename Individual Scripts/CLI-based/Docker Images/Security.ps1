$DockerSecurityLog = "C:\Logs\DockerImages\Security.log"

$MBAMURL = "https://github.com/osdcloudcline/Software/raw/refs/heads/main/Security/MalwareBytes/MBSetup.exe"
$destination = "C:\download"

Start-Transcript -Path $DockerSecurityLog

Get-Date

Install-Module -Name OSD -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name OSD -Force

Save-WebFile -SourceUrl $MBAMURL -DestinationDirectory $destination

Stop-Transcript
