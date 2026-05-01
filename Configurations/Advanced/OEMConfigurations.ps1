$PCManufacturer = (Get-CimInstance -ClassName Win32_ComputerSystem).Manufacturer


If($PCManufacturer -like "*Dell*"){

$DellApps = @(
 @{Name=""; ID="" }
)

Write-Host "Dell System Detected. Processing Dell-specific tools..." -ForegroundColor Yellow




}
