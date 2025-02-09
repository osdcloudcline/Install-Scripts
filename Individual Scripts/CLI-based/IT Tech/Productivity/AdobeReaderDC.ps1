Start-Transcript -Path "C:\Logs\OSDCloud\Install\IT\Productivity\$env:computername-AcrobatReaderDC.log"

$app1 = "Adobe Acrobat Reader"

Write-Host "Processing: $app1..." -ForegroundColor Cyan
winget install --id Adobe.Acrobat.Reader.64-bit --exact --accept-source-agreements  --accept-source-agreements --force

Stop-Transcript
