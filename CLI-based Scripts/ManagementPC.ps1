Write-Host '                                                                 ' -BackgroundColor White 
Write-Host '          MANAGEMENT PC SOFTWARE CONFIGURATION                   ' -ForegroundColor DarkBlue -BackgroundColor White 
Write-Host '        The following software will be installed:                ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '                                                                 ' -BackgroundColor White 
Write-Host '  - Web Browsers: Google Chrome                                  ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - File Transfer: Filezilla, PuTTY and WinSCP                   ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - OS Profile: User Profile Backup and Restore                  ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Programming: VS Code and AI Code Editor                      ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - VDI/Remote Connections: AnyDesk                              ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - VDI/Remote Connections: Microsoft 365 VDI                    ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Utilities: Windows 11 SDK, ADK, WinPE Add-On                 ' -ForegroundColor DarkBlue -BackgroundColor White
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

$OSThemePacks = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/refs/heads/main/SYSTEM/OS-Mandated%20Software/OS-ThemePacks.ps1")
Invoke-Expression $($OSThemePacks.Content)

$CustomOSThemePacks = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/refs/heads/main/SYSTEM/OS-Mandated%20Software/Custom-OS-ThemePacks.ps1")
Invoke-Expression $($CustomOSThemePacks.Content)

Write-Host "Processing install for: Web Browsers..." -ForegroundColor DarkBlue -BackgroundColor White

$Chrome = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/CLI-based/Management%20PC/Browsers/Chrome.ps1")
Invoke-Expression $($Chrome.Content)

Write-Host "Processing install for: Cloud Backup software..." -ForegroundColor DarkBlue -BackgroundColor White

$UPBR = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/CLI-based/Management%20PC/Cloud%20Backups/UPBR.ps1")
Invoke-Expression $($UPBR.Content)


Write-Host "Processing install for: File Transfer software..." -ForegroundColor DarkBlue -BackgroundColor White

$FileZilla = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/CLI-based/Management%20PC/File%20Transfer/FileZilla.ps1")
Invoke-Expression $($FileZilla.Content)

$PuTTY = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/CLI-based/Management%20PC/File%20Transfer/PuTTY.ps1")
Invoke-Expression $($PuTTY.Content)

$WinSCP = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/CLI-based/Management%20PC/File%20Transfer/WinSCP.ps1")
Invoke-Expression $($WinSCP.Content)


Write-Host "Processing install for: Programming software..." -ForegroundColor DarkBlue -BackgroundColor White

$VSCode = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/CLI-based/Management%20PC/Programming/VSCode.ps1")
Invoke-Expression $($VSCode.Content)

$AICursor = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/CLI-based/Management%20PC/Programming/AICursorEditor.ps1")
Invoke-Expression $($AICursor.Content)

Write-Host "Processing install for: System Utilities - Software..." -ForegroundColor DarkBlue -BackgroundColor White

$OSKits = Invoke-WebRequest ("https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/CLI-based/IT%20Tech/Utilities-Software/Win11-22H2-OSKits.ps1")
Invoke-Expression $($OSKits.Content)


Write-Host "Processing downloads for: Security software..." -ForegroundColor DarkBlue -BackgroundColor White

$MBAM = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/CLI-based/Management%20PC/Security/Anti-Malware/MalwareBytes.ps1")
Invoke-Expression $($MBAM.Content)

$Uninstall = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Uninstall/UninstallMainMenu.ps1")
Invoke-Expression $($Uninstall.Content)
