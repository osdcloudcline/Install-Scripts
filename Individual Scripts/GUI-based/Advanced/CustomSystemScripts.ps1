$CustomScriptLogs = "C:\Logs\CustomSystemSpecific-$env:computername"

Start-Transcript -Path $CustomScriptLogs

If ($env:computername -eq "BTDESKTOP"){

$LianLi = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/refs/heads/main/Individual%20Scripts/GUI-based/System-Specific%20Scripts/Desktop%20Computers/Bryan%20Desktop/Lian-Li.ps1")
Invoke-Expression $($LianLi.Content)

$SignalRGB = Invoke-WebRequest("https://github.com/osdcloudcline/Software/raw/refs/heads/main/Utilities/SignalRGB/SignalRGB.ps1")
Invoke-Expression $($SignalRGB.Content)


}

Stop-Transcript
