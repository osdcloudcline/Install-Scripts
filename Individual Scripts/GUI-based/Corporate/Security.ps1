$SecurityDownloadLog = "C:\Logs\Installs\Software\Corporate\GUI\$env:computername-Security.log"

Start-Transcript $SecurityDownloadLog

Install-Module -Name OSD -AllowClobber -SkipPublisherCheck -Force
Import-Module -Name OSD -Force

$MBDLURL = "https://github.com/osdcloudcline/Software/raw/main/Security/MalwareBytes/MBSetup.exe"

$destination = "C:\downloads"

Save-WebFile -SourceUrl $MBDLURL -DestinationDirectory $destination


Stop-Transcript
