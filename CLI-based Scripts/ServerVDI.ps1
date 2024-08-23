Write-Host '                                                                 ' -BackgroundColor White 
Write-Host '              SERVER VIRTUAL DESKTOP INTERFACE                   ' -ForegroundColor DarkBlue -BackgroundColor White 
Write-Host '                 SOFTWARE CONFIGURATION                          ' -ForegroundColor DarkBlue -BackgroundColor White 
Write-Host '          The following software will be installed:              ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '                                                                 ' -BackgroundColor White 
Write-Host '  - Web Browsers: DuckDuckGo                                     ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Utilities: OS Kits                                           ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Security: DOWNLOAD ONLY - MalwareBytes, Norton360            ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '                                                                 ' -BackgroundColor White 
pause


Write-Host "Processing install for: Web Browsers..." -ForegroundColor DarkBlue -BackgroundColor White

$DuckDuckGo = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/CLI-based/Virtual%20Desktop%20Interface/Server%20Operating%20Systems/Browsers/DuckDuckGo.ps1")
Invoke-Expression $($DuckDuckGo.Content)


Write-Host "Processing install for: System Utilities software..." -ForegroundColor DarkBlue -BackgroundColor White

$OSKits = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/CLI-based/Virtual%20Desktop%20Interface/Server%20Operating%20Systems/Utilities%20-%20Software/OSKits.ps1")
Invoke-Expression $($OSKits.Content)


Write-Host "Processing downloads for: Security software..." -ForegroundColor DarkBlue -BackgroundColor White

$MBAM = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/CLI-based/Virtual%20Desktop%20Interface/Server%20Operating%20Systems/Security/Anti-Malware/MalwareBytes.ps1")
Invoke-Expression $($MBAM.Content)
