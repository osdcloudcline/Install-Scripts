# Define the Advanced Media Software using Hash Tables @{ }
$ADVGaming = @(
   @{ Name = "Audacity"; ID = "Audacity.Audacity" }
   @{ Name = "FFMPEG for Audacity"; ID = "BtbN.FFmpeg.GPL.Shared.8.1" }
   @{ Name = "GIMP"; ID = "GIMP.GIMP.3" }
   @{ Name = "Handbrake"; ID = "HandBrake.HandBrake" }
   @{ Name = "Kodi"; ID = "XBMCFoundation.Kodi" }
   @{ Name = "MKV Toolnix"; ID = "MoritzBunkus.MKVToolNix" }
   @{ Name = "MakeMKV"; ID = "GuinpinSoft.MakeMKV" }
   @{ Name = "MediaInfo"; ID = "MediaArea.MediaInfo.GUI" }
   @{ Name = "Logitech Harmony Universal Remote Control"; ID = "Logitech.MyHarmony" }
   @{ Name = "PowerISO"; ID = "PowerSoftware.PowerISO" }
   @{ Name = "VLC Player"; ID = "VideoLAN.VLC" }
   @{ Name = "Apple iTunes"; ID = "Apple.iTunes" }
   @{ Name = "Apple Application Support 64-bit"; ID = "Apple.AppleApplicationSupport.x64" }
   @{ Name = "Apple Mobile Device Support"; ID = "Apple.AppleMobileDeviceSupport" }
   @{ Name = "Apple Bonjour"; ID = "Apple.Bonjour" }
)


# Process WinGet Items
foreach($App in $ADVGaming){
    Write-Host "`nProcessing install for: $($App.Name)" -ForegroundColor Cyan
    # Added --silent and --accept-package-agreements for better automation
    winget install --id $($App.ID) --exact --silent --accept-package-agreements --accept-source-agreements --force
    Write-Host "Completed: $($App.Name) install`n" -ForegroundColor Green
}

$HDVideoFactory = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/refs/heads/main/Individual%20Scripts/CLI-based/Advanced/Media/HDVideoConverterPro.ps1")
Invoke-Expression $($HDVideoFactory.Content)
