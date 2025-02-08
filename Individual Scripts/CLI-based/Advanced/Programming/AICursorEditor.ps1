Start-Transcript -Path "C:\Logs\OSDCloud\Install\Advanced\Programming\$env:computername-AICursorEditor.log"

$Date = Get-Date

Write-Host "Installed on: $Date"


$app1 = "AI Cursor Editor"

Write-Host
Write-Host "Installing $app1..." -ForegroundColor Cyan
winget install --id CursorAI,Inc.Cursor --exact --accept-source-agreements  --accept-source-agreements --force

Stop-Transcript
