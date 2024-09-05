$ProgrammingInstallLog = "C:\Logs\Installs\Software\Standard\GUI\$env:computername-Programming.log"

Start-Transcript -Path $ProgrammingInstallLog

winget install --id CursorAI,Inc.Cursor --exact --accept-source-agreements  --accept-source-agreements --force

winget install --id Microsoft.VisualStudioCode --exact --accept-source-agreements  --accept-source-agreements --force

Stop-Transcript
