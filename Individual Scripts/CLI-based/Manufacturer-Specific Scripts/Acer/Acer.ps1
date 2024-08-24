$MfrSoftwareGroup1 = "Acer"

$AcerSoftware1 = "Control Center S"
$AcerSoftware2 = "Care Center S"
$AcerSoftware3 = "Acer Product Registration"
$AcerSoftware4 = "Acer Windows Mixed Reality HMD DCA"
$AcerSoftware5 = "Acer HoloReact Media Player"
$AcerSoftware6 = "Acer Collection"
$AcerSoftware7 = "Acer OJO 500"
$AcerSoftware8 = "Acer Collection S"
$AcerSoftware9 = "Acer Scrapboard"
$AcerSoftware10 = "Acer MemoryBinder"

Write-Host "Installing $MfrSoftwareGroup1 Software..." -ForegroundColor Cyan
Write-Host
Write-Host
Write-Verbose "Installing: $AcerSoftware1..." -Verbose
winget install --id Lenovo.UpdateRetriever --accept-source-agreements  --accept-source-agreements --force
Write-Verbose "Installing: $AcerSoftware2..." -Verbose
winget install --id Lenovo.ThinInstaller --accept-source-agreements  --accept-source-agreements --force
Write-Verbose "Installing: $AcerSoftware3..." -Verbose
winget install --id Lenovo.SystemUpdate --accept-source-agreements  --accept-source-agreements --force
Write-Verbose "Installing: $AcerSoftware4..." -Verbose
winget install --id Lenovo.DockManager  --accept-source-agreements  --accept-source-agreements --force

Write-Verbose "Installing: $AcerSoftware5..." -Verbose
winget install --id Lenovo.UpdateRetriever --accept-source-agreements  --accept-source-agreements --force
Write-Verbose "Installing: $AcerSoftware6..." -Verbose
winget install --id Lenovo.ThinInstaller --accept-source-agreements  --accept-source-agreements --force
Write-Verbose "Installing: $AcerSoftware7..." -Verbose
winget install --id Lenovo.SystemUpdate --accept-source-agreements  --accept-source-agreements --force
Write-Verbose "Installing: $AcerSoftware8..." -Verbose
winget install --id Lenovo.DockManager  --accept-source-agreements  --accept-source-agreements --force

Write-Verbose "Installing: $AcerSoftware9..." -Verbose
winget install --id Lenovo.SystemUpdate --accept-source-agreements  --accept-source-agreements --force
Write-Verbose "Installing: $AcerSoftware10..." -Verbose
winget install --id Lenovo.DockManager  --accept-source-agreements  --accept-source-agreements --force
