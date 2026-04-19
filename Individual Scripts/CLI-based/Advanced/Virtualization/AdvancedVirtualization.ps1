Write-Host "Processing Windows Feature: Hyper-V" -ForegroundColor Cyan
Write-Host
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V -All
Write-Host "Processing Windows Feature: Windows Sandbox" -ForegroundColor Cyan
Write-Host
Enable-WindowsOptionalFeature -Online -FeatureName "Containers-DisposableClientVM" -All
