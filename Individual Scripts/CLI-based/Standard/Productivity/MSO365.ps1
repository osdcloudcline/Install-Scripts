Start-Transcript -Path "C:\Logs\Powershell\Install\Standard\Productivity\$env:computername-MSO365.log"

$app1 = "Microsoft 365 (Office)"

Write-Host "Processing: $app1..." -ForegroundColor Cyan
winget install --id 9WZDNCRD29V9 --source msstore

Stop-Transcript