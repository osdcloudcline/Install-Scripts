$MediaInstallLog = "C:\Logs\Installs\Software\Advanced\GUI\$env:computername-Media.log"

Start-Transcript -Path $MediaInstallLog

winget install --id Audacity.Audacity --exact --accept-source-agreements  --accept-source-agreements --force

choco install audacity-ffmpeg -y

winget install --id GIMP.GIMP --exact --accept-source-agreements  --accept-source-agreements --force

$HDVideoSource = "https://us.videoconverterfactory.com/download/hd-video-converter-pro.exe"
$HDVideoDestination = "C:\downloads"

Install-Module -Name OSD -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name OSD -Force
Save-WebFile -SourceUrl $HDVideoSource  -DestinationDirectory $HDVideoDestination

winget install --id HandBrake.HandBrake --exact --accept-source-agreements  --accept-source-agreements --force

winget install --id XBMCFoundation.Kodi --exact --accept-source-agreements  --accept-source-agreements --force

winget install --id MoritzBunkus.MKVToolNix --exact --accept-source-agreements  --accept-source-agreements --force

winget install --id GuinpinSoft.MakeMKV --exact --accept-source-agreements  --accept-source-agreements --force

winget install --id MediaArea.MediaInfo.GUI --exact --accept-source-agreements  --accept-source-agreements --force

winget install --id Logitech.MyHarmony --exact --accept-source-agreements  --accept-source-agreements --force

winget install --id PowerSoftware.PowerISO --exact --accept-source-agreements  --accept-source-agreements --force

winget install --id VideoLAN.VLC --exact --accept-source-agreements  --accept-source-agreements --force

winget install --id Apple.iTunes --exact --accept-source-agreements  --accept-source-agreements --force

Stop-Transcript
