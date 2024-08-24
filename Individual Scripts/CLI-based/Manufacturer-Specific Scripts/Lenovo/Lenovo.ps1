$MfrSoftwareGroup1 = "Lenovo"

$LenovoSoftware1 = "Lenovo Update Retriever"
$LenovoSoftware2 = "Lenovo Thin Installer"
$LenovoSoftware3 = "Lenovo System Update"
$LenovoSoftware4 = "Lenovo Dock Manager"

Write-Host "Installing $MfrSoftwareGroup1 Software..." -ForegroundColor Cyan
Write-Host
Write-Host
Write-Verbose "Installing: $LenovoSoftware1..." -Verbose
winget install --id Lenovo.UpdateRetriever --accept-source-agreements  --accept-source-agreements --force
Write-Verbose "Installing: $LenovoSoftware2..." -Verbose
winget install --id Lenovo.ThinInstaller --accept-source-agreements  --accept-source-agreements --force
Write-Verbose "Installing: $LenovoSoftware3..." -Verbose
winget install --id Lenovo.SystemUpdate --accept-source-agreements  --accept-source-agreements --force
Write-Verbose "Installing: $LenovoSoftware4..." -Verbose
winget install --id Lenovo.DockManager  --accept-source-agreements  --accept-source-agreements --force
