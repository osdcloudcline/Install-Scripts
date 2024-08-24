$HPSoftware1 = "HP Smart"
$HPSoftware2 = "HP Scan and Capture"
$HPSoftware3 = "HP PC Hardware Diagnostics"
$HPSoftware4 = "HP Cloud Recovery Tool"
$HPSoftware5 = "HP Display Center"
$HPSoftware6 = "OMEN Gaming Hub"

$MfrSoftwareGroup1 = "HP"

Write-Host "Installing $MfrSoftwareGroup1 Software..." -ForegroundColor Cyan
Write-Host
Write-Host
Write-Verbose "Installing: $HPSoftware1..." -Verbose
winget install --id 9WZDNCRFHWLH --accept-source-agreements  --accept-source-agreements --force
Write-Verbose "Installing: $HPSoftware2..." -Verbose
winget install --id 9WZDNCRFHWL0 --accept-source-agreements  --accept-source-agreements --force
Write-Verbose "Installing: $HPSoftware3..." -Verbose
winget install --id 9P4PNDG7L782 --accept-source-agreements  --accept-source-agreements --force
Write-Verbose "Installing: $HPSoftware4..." -Verbose
winget install --id HP.HPCloudRecoveryTool --accept-source-agreements  --accept-source-agreements --force
Write-Verbose "Installing: $HPSoftware5..." -Verbose
winget install --id 9NT6FQ9KQF90 --accept-source-agreements  --accept-source-agreements --force
Write-Verbose "Installing: $HPSoftware6..." -Verbose
winget install --id 9NQDW009T0T5 --accept-source-agreements  --accept-source-agreements --force
