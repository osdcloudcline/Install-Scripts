$SystemRescueLog = "C:\Logs\OSDCloud\Install\SystemRescue\Clonezilla.log"

Start-Transcript -Path $SystemRescueLog

Get-Date

Import-Module -Name OSD -Force


##############################
## Clonezilla URL ######
##############################

$ClonezillaURL = "https://free.nchc.org.tw/clonezilla-live/stable/clonezilla-live-3.2.0-5-amd64.iso"

##############################
## Download destination 
##############################

$DLDestination = "C:\downloads\SystemRescue"


Write-Verbose "Processing: Downloading Clonezilla x64 3.2.0-5..."

Save-WebFile -SourceUrl $ClonezillaURL -DestinationDirectory $DLDestination

Stop-Transcript
