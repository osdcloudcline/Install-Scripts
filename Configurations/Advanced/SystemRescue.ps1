Import-Module -Name OSD -Force


$ClonezillaURL = "https://free.nchc.org.tw/clonezilla-live/stable/clonezilla-live-3.3.1-35-amd64.iso"
$HirenBootCDPEURL = "https://www.hirensbootcd.org/files/HBCD_PE_x64.iso"

$DLDestination = "C:\downloads\SystemRescue"


Write-Verbose "Processing: Downloading Clonezilla x64 3.3.1.35..."
Save-WebFile -SourceUrl $ClonezillaURL -DestinationDirectory $DLDestination
Write-Host

Write-Verbose "Processing: Downloading Hiren's BootCD PE x64..."
Save-WebFile -SourceUrl $HirenBootCDPEURL -DestinationDirectory $DLDestination
