# Define the Standard Media Software using Hash Tables @{ }
$STDMedia = @(
   
   @{ Name = "Handbrake"; ID = "HandBrake.HandBrake" },
   @{ Name = "Kodi"; ID = "XBMCFoundation.Kodi" },
   @{ Name = "MKV Toolnix"; ID = "MoritzBunkus.MKVToolNix" },
   @{ Name = "MediaInfo"; ID = "MediaArea.MediaInfo.GUI" },
   @{ Name = "Media Monkey 2024"; ID = "VentisMedia.MediaMonkey.2024" },
   @{ Name = "VLC Player"; ID = "VideoLAN.VLC" },
   @{ Name = "Apple iTunes"; ID = "Apple.iTunes" },
   @{ Name = "Apple Application Support 64-bit"; ID = "Apple.AppleApplicationSupport.x64" },
   @{ Name = "Apple Mobile Device Support"; ID = "Apple.AppleMobileDeviceSupport" },
   @{ Name = "Apple Bonjour"; ID = "Apple.Bonjour" }
)

# Process WinGet Items
foreach($App in $STDMedia){
    Write-Host "`nProcessing install for: $($App.Name)" -ForegroundColor Cyan
    winget install --id $($App.ID) --exact --silent --accept-package-agreements --accept-source-agreements --force --source winget
    Write-Host "Completed: $($App.Name) install`n" -ForegroundColor Green
}
