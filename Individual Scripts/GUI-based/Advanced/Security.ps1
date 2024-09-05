$SecurityDownloadLog = "C:\Logs\Installs\Software\Advanced\GUI\$env:computername-Security.log"

Start-Transcript $SecurityDownloadLog

Install-Module -Name OSD -AllowClobber -SkipPublisherCheck -Force
Import-Module -Name OSD -Force

$MBDLURL = "https://github.com/osdcloudcline/Software/raw/main/Security/MalwareBytes/MBSetup.exe"

$destination = "C:\downloads"

Save-WebFile -SourceUrl $MBDLURL -DestinationDirectory $destination

$BDURLDL = "https://github.com/osdcloudcline/Software/raw/main/Security/BitDefender/bitdefender_tsecurity.exe"

Save-WebFile -SourceUrl $BDURLDL -DestinationDirectory $destination

$N360DLURL = "https://github.com/osdcloudcline/Software/raw/main/Security/Norton%20360/N360Downloader.exe"

Save-WebFile -SourceUrl $N360DLURL -DestinationDirectory $destination

Stop-Transcript
