Start-Transcript -Path "C:\Logs\Powershell\Install\Corporate\Productivity\$env:computername-MSO365AppsEnterprise.log"

$app1 = "Microsoft Office 365 for Enterprise"

Write-Host "Processing: $app1..." -ForegroundColor Cyan
winget install --id Microsoft.Office --exact --accept-source-agreements  --accept-source-agreements --force

Stop-Transcript