$ProgrammingInstallLog = "C:\Logs\Installs\Software\Advanced\GUI\$env:computername-Programming.log"

Start-Transcript -Path $ProgrammingInstallLog

winget install --id CursorAI,Inc.Cursor --exact --accept-source-agreements  --accept-source-agreements --force

choco install visualstudio2022enterprise --package-parameters "--allWorkloads --includeRecommended --includeOptional --passive --locale en-US"

winget install --id Microsoft.VisualStudioCode --exact --accept-source-agreements  --accept-source-agreements --force

Stop-Transcript
