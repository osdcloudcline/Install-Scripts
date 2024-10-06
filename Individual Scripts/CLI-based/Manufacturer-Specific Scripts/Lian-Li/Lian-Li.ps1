$LianLiSoftware1 = "Lian Li L-Connect 3"
$FanSoftware1 = "Fan Control"

$MfrSoftwareGroup1 = "Lian-Li"


Write-Host "Installing $MfrSoftwareGroup1 Software..." -ForegroundColor Cyan
Write-Host
Write-Host
Write-Verbose "Installing: $LianLiSoftware1..." -Verbose
$LConnect = Invoke-WebRequest("https://github.com/osdcloudcline/Software/raw/refs/heads/main/Utilities/Lian-Li/L-Connect%203/v%202.0.18/LConnect3.ps1")
Invoke-Expression $($LConnect.Content)
Write-Verbose "Installing: $FanSoftware1..." -Verbose
winget.exe install --id Rem0o.FanControl --exact --accept-source-agreements  --accept-package-agreements --force
