


Import-Module -Name OSD -Force

$StreamDeckProfileURL = "https://github.com/osdcloudcline/Software/raw/refs/heads/main/Other/Stream%20Deck%20-%2016-10-2024%20-%2006-44.streamDeckProfilesBackup"
$Destination = "C:\downloads"


Write-Verbose "Processing: Acquiring Stream Deck Profile from OSDCloudCline GitHub repo..."
Save-WebFile -SourceUrl $StreamDeckProfileURL  -DestinationDirectory 
