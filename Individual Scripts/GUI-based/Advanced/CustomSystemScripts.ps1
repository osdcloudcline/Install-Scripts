$CustomScriptLogs = ""

Start-Transcript -Path $CustomScriptLogs

If ($env:computername -eq "BTDESKTOP"){
$LianLi = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/refs/heads/main/Individual%20Scripts/GUI-based/System-Specific%20Scripts/Desktop%20Computers/Bryan%20Desktop/Lian-Li.ps1")
Invoke-Expression $($LianLi.Content)


}


Stop-Transcript
