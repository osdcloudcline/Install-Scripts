Start-Transcript -Path "C:\Logs\OSDCloud\Install\IT\Productivity\$env:computername-MSO365.log"

$app1 = "Microsoft 365 (Office)"

Write-Host "Processing: $app1..." -ForegroundColor Cyan
winget install --id 9WZDNCRD29V9 --source msstore

Stop-Transcript
