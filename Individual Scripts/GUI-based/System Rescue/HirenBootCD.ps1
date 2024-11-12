$SystemRescueLog = "C:\Logs\OSDCloud\Install\SystemRescue\HirenBootCD.log"

Start-Transcript -Path $SystemRescueLog

Get-Date

Import-Module -Name OSD -Force


##############################
## Hiren Boot CD PE URL ######
##############################

$HirenBootCDPEURL = "https://www.hirensbootcd.org/files/HBCD_PE_x64.iso"

##############################
## Download destination 
##############################

$DLDestination = "C:\downloads\SystemRescue"


Write-Verbose "Processing: Downloading Hiren's BootCD PE x64..."

Save-WebFile -SourceUrl $HirenBootCDPEURL -DestinationDirectory $DLDestination
