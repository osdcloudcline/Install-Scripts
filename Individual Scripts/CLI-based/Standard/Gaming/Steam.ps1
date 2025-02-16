Start-Transcript -Path "C:\Logs\OSDCloud\Install\Standard\Gaming\$env:computername-Steam.log"

Import-Module -Name OSD -Force

$Date = Get-Date

$app1 = "Steam"


Write-Host "Installed on: $Date"

Write-Host
Write-Verbose "Processing: Steam Setup download..." -Verbose
$SteamURL = "https://cdn.cloudflare.steamstatic.com/client/installer/SteamSetup.exe"
$SteamDestination = "C:\downloads"

Save-WebFile -SourceUrl $SteamURL -DestinationDirectory $SteamDestination

Write-Host

Write-Verbose "Installing: $app1..." -ForegroundColor Cyan
$SteamSetup = "C:\downloads\SteamSetup.exe"
Start-Process -FilePath $SteamSetup

Stop-Transcript
