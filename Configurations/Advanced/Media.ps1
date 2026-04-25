# Define the Advanced Media Software using Hash Tables @{ }
$ADVMedia = @(
   @{ Name = "Audacity"; ID = "Audacity.Audacity" }
   @{ Name = "FFMPEG for Audacity"; ID = "BtbN.FFmpeg.GPL.Shared.8.1" }
   @{ Name = "GIMP"; ID = "GIMP.GIMP.3" }
   @{ Name = "Handbrake"; ID = "HandBrake.HandBrake" }
   @{ Name = "Kodi"; ID = "XBMCFoundation.Kodi" }
   @{ Name = "MKV Toolnix"; ID = "MoritzBunkus.MKVToolNix" }
   @{ Name = "MakeMKV"; ID = "GuinpinSoft.MakeMKV" }
   @{ Name = "MediaInfo"; ID = "MediaArea.MediaInfo.GUI" }
   @{ Name = "Media Monkey 2024"; ID = "VentisMedia.MediaMonkey.2024" }
   @{ Name = "Exact Audio Copy"; ID = "AndreWiethoff.ExactAudioCopy" }
   @{ Name = "Logitech Harmony Universal Remote Control"; ID = "Logitech.MyHarmony" }
   @{ Name = "PowerISO"; ID = "PowerSoftware.PowerISO" }
   @{ Name = "VLC Player"; ID = "VideoLAN.VLC" }
   @{ Name = "Apple iTunes"; ID = "Apple.iTunes" }
   @{ Name = "Apple Application Support 64-bit"; ID = "Apple.AppleApplicationSupport.x64" }
   @{ Name = "Apple Mobile Device Support"; ID = "Apple.AppleMobileDeviceSupport" }
   @{ Name = "Apple Bonjour"; ID = "Apple.Bonjour" }
)


# Process WinGet Items
foreach($App in $ADVMedia){
    Write-Host "`nProcessing install for: $($App.Name)" -ForegroundColor Cyan
    # Added --silent and --accept-package-agreements for better automation
    winget install --id $($App.ID) --exact --silent --accept-package-agreements --accept-source-agreements --force --source winget
    Write-Host "Completed: $($App.Name) install`n" -ForegroundColor Green
}

$app1 = "HD Video Converter Factory Pro"

Write-Verbose "Processing: $app1..." -Verbose
Write-Host 
Write-Host "Acquiring $app1 from vendor website..." -ForegroundColor Cyan
$HDVideoSource = "https://us.videoconverterfactory.com/download/hd-video-converter-pro.exe"
$HDVideoDestination = "C:\downloads"
$HDVideoSetup = "C:\downloads\hd-video-converter-pro.exe"
Save-WebFile -SourceUrl $HDVideoSource  -DestinationDirectory $HDVideoDestination

Write-Host ' ATTN: Manual install needed!  ' -ForegroundColor DarkRed -BackgroundColor White

Start-Process -Path $HDVideoSource
