Write-Host '                                                                 ' -BackgroundColor White 
Write-Host '              HONEYPOT SOFTWARE CONFIGURATION                    ' -ForegroundColor DarkBlue -BackgroundColor White 
Write-Host '          The following software will be installed:              ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '                                                                 ' -BackgroundColor White 
Write-Host '  - Web Browsers: Google Chrome, DuckDuckGo                      ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Media: VLC Player and MediaInfo                              ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - System Utilities: 7-Zip and CCleaner                         ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Security: DOWNLOAD ONLY - IPVanish VPN                       ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Security: DOWNLOAD ONLY - MalwareBytes                       ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '                                                                 ' -BackgroundColor White 
Write-Host '    Uninstallation of software will be available                 ' -ForegroundColor DarkRed -BackgroundColor White
Write-Host '    after script completes                                       ' -ForegroundColor DarkRed -BackgroundColor White
Write-Host '                                                                 ' -BackgroundColor White
pause

Write-Host "Applying configuration to $env:computername..." -ForegroundColor DarkBlue -BackgroundColor White

Write-Host "Processing: Mandatory System Configuration Pre-Requisites..." -ForegroundColor Cyan

Write-Verbose "Step 1 - PowerShell Package Providers..." -Verbose
Write-Host

$PSProviders = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/PowerShell%20Modules/Package%20Providers/Install.ps1")
Invoke-Expression $($PSProviders.Content)

Write-Verbose "Step 2 - PowerShell 5.1 Modules..." -Verbose
Write-Host

$PS5Modules = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/PowerShell%20Modules/Version%205.1/Install.ps1")
Invoke-Expression $($PS5Modules.Content)

Write-Verbose "Step 3 - PowerShell 7.x Modules..." -Verbose 
Write-Host

$PS7Modules = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/PowerShell%20Modules/Version%207.x/Install.ps1")
pwsh Invoke-Expression $($PS7Modules.Content)

Write-Verbose "Step 4 - Merging Registry Entries..." -Verbose
Write-Host

$ClientRegistry = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/Registry%20Modifications/ClientRegistry.ps1")
Invoke-Expression $($ClientRegistry.Content)

Write-Verbose "Step 5 - Client Operating System RSAT Tools..." -Verbose
Write-Host

$ClientRSAT = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/PostInstall/Client%20OS%20Roles%20/InstallClientRSAT.ps1")
Invoke-Expression $($ClientRSAT.Content)

Write-Verbose "Step 6 - Mandatory OS Pre-Requirements..." -Verbose
Write-Host

$OS = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/main/SYSTEM/OS-Mandated%20Software/SYSTEM.ps1")
Invoke-Expression $($OS.Content)

Write-Host "Processing install for: Web Browsers..." -ForegroundColor DarkBlue -BackgroundColor White

$Chrome = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/CLI-based/Honeypot/Browsers/Chrome.ps1")
Invoke-Expression $($Chrome.Content)

$DuckDuckGo = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/CLI-based/Honeypot/Browsers/DuckDuckGo.ps1")
Invoke-Expression $($DuckDuckGo.Content)

Write-Host "Processing install for: Media software..." -ForegroundColor DarkBlue -BackgroundColor White

$MediaInfo = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/CLI-based/Honeypot/Media/MediaInfo.ps1")
Invoke-Expression $($MediaInfo.Content)

$VLC = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/CLI-based/Honeypot/Media/VLCPlayer.ps1")
Invoke-Expression $($VLC.Content)


Write-Host "Processing install for: System Utilities - Software..." -ForegroundColor DarkBlue -BackgroundColor White

$7Zip = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/CLI-based/Honeypot/Utilities-Software/7Zip.ps1")
Invoke-Expression $($MediaInfo.Content)

$CCleaner = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/CLI-based/Honeypot/Utilities-Software/CCleaner.ps1")
Invoke-Expression $($VLC.Content)


Write-Host "Processing downloads for: Security software..." -ForegroundColor DarkBlue -BackgroundColor White

$FileDLs = Invoke-WebRequest ("https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/CLI-based/Honeypot/Security/VMFileDLs.ps1")
Invoke-Expression $($FileDLs.Content)
