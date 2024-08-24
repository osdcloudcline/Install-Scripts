$MfrSoftwareGroup1 = "Acer"

$AcerSoftware1 = "Control Center S"
$AcerSoftware2 = "Care Center S"
$AcerSoftware3 = "Acer Product Registration"
$AcerSoftware4 = "Acer Windows Mixed Reality HMD DCA"
$AcerSoftware5 = "Acer HoloReact Media Player"
$AcerSoftware6 = "Acer Collection"
$AcerSoftware7 = "Acer Scrapboard"
$AcerSoftware8 = "Acer Collection S"
$AcerSoftware9 = "Acer OJO 500"
$AcerSoftware10 = "Acer MemoryBinder"

Write-Host "Installing $MfrSoftwareGroup1 Software..." -ForegroundColor Cyan
Write-Host
Write-Host
Write-Verbose "Installing: $AcerSoftware1..." -Verbose
winget install --id 9MZPX5WCBMWT --source msstore
Write-Verbose "Installing: $AcerSoftware2..." -Verbose
winget install --id 9P8BB54NQNQ4 --source msstore
Write-Verbose "Installing: $AcerSoftware3..." -Verbose
winget install --id 9P5S8GL5498P --source msstore
Write-Verbose "Installing: $AcerSoftware4..." -Verbose
winget install --id 9NNGST85MFZQ  --source msstore
Write-Verbose "Installing: $AcerSoftware5..." -Verbose
winget install --id 9NFG7H3CKX45 --source msstore
Write-Verbose "Installing: $AcerSoftware6..." -Verbose
winget install --id 9WZDNCRDRDCD --source msstore
Write-Verbose "Installing: $AcerSoftware7..." -Verbose
winget install --id 9WZDNCRFHWMT --source msstore
Write-Verbose "Installing: $AcerSoftware8..." -Verbose
winget install --id 9PPJJN34RCR7  --source msstore
Write-Verbose "Installing: $AcerSoftware9..." -Verbose
winget install --id 9NNGWRS4Z04Q --source msstore
Write-Verbose "Installing: $AcerSoftware10..." -Verbose
winget install --id 9WZDNCRDRD9V  --source msstore
