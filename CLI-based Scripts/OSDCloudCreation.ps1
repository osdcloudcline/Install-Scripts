Write-Host '                                                                 ' -BackgroundColor White 
Write-Host '          OSDCloud ISO CREATION SOFTWARE CONFIGURATION           ' -ForegroundColor DarkBlue -BackgroundColor White 
Write-Host '        The following software will be installed:                ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '                                                                 ' -BackgroundColor White 
Write-Host '  - Web Browsers: Google Chrome                                  ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - OS Profile: User Profile Backup and Restore                  ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Programming: VS Code and AI Code Editor                      ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Utilities: Windows 11 SDK, ADK, WinPE Add-On                 ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Security: DOWNLOAD ONLY - MalwareBytes                       ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '                                                                 ' -BackgroundColor White 
Write-Host '    Uninstallation of software will be available                 ' -ForegroundColor DarkRed -BackgroundColor White
Write-Host '    after script completes                                       ' -ForegroundColor DarkRed -BackgroundColor White
Write-Host '                                                                 ' -BackgroundColor White
pause


Invoke-WebRequest -Uri "https://www.nuget.org/api/v2/package/Microsoft.UI.Xaml/2.8.6" -OutFile "$env:TEMP\Microsoft.UI.Xaml.2.8.6.nupkg.zip"
Expand-Archive -Path "$env:TEMP\Microsoft.UI.Xaml.2.8.6.nupkg.zip" -DestinationPath "$env:TEMP\Microsoft.UI.Xaml.2.8" -Force
Add-AppPackage $env:TEMP\Microsoft.UI.Xaml.2.8\tools\appx\x64\release\Microsoft.UI.Xaml.2.8.appx
Add-AppPackage https://aka.ms/GetWinGet

Write-Host "Applying configuration to $env:computername..." -ForegroundColor DarkBlue -BackgroundColor White

Write-Host "Processing: Mandatory System Configuration Pre-Requisites..." -ForegroundColor Cyan

Write-Verbose "Step 1 - PowerShell Package Providers..." -Verbose
Write-Host

$PSProviders = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/PowerShell%20Modules/Package%20Providers/Install.ps1")
Invoke-Expression $($PSProviders.Content)

Write-Verbose "Step 2 - PowerShell 5.1 Modules..." -Verbose
Write-Host

$PS5Modules = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/refs/heads/main/PowerShell%20Modules/OSDCloud%20ISO%20Creation/Install.ps1")
Invoke-Expression $($PS5Modules.Content)

$PS5Modules1 = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/refs/heads/main/PowerShell%20Modules/OSDCloud%20ISO%20Creation/Import.ps1")
Invoke-Expression $($PS5Modules1.Content)

Write-Verbose "Step 3 - Merging Registry Entries..." -Verbose
Write-Host

$ClientRegistry = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/Registry%20Modifications/ClientRegistry.ps1")
Invoke-Expression $($ClientRegistry.Content)

Write-Verbose "Step 4 - Mandatory OS Pre-Requirements..." -Verbose
Write-Host

$OS = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/main/SYSTEM/OS-Mandated%20Software/SYSTEM.ps1")
Invoke-Expression $($OS.Content)

Write-Host "Processing install for: Web Browsers..." -ForegroundColor DarkBlue -BackgroundColor White

$Chrome = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/CLI-based/Management%20PC/Browsers/Chrome.ps1")
Invoke-Expression $($Chrome.Content)

Write-Host "Processing install for: Cloud Backup software..." -ForegroundColor DarkBlue -BackgroundColor White

$UPBR = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/CLI-based/Management%20PC/Cloud%20Backups/UPBR.ps1")
Invoke-Expression $($UPBR.Content)

Write-Host "Processing install for: Programming software..." -ForegroundColor DarkBlue -BackgroundColor White

$VSCode = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/CLI-based/Management%20PC/Programming/VSCode.ps1")
Invoke-Expression $($VSCode.Content)

Write-Host "Processing install for: System Utilities - Software..." -ForegroundColor DarkBlue -BackgroundColor White

$OSKits = Invoke-WebRequest ("https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/CLI-based/IT%20Tech/Utilities-Software/Win11-22H2-OSKits.ps1")
Invoke-Expression $($OSKits.Content)

$MSDART = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/refs/heads/main/Individual%20Scripts/CLI-based/Advanced/Utilities-Software/MSDART.ps1")
Invoke-Expression $($MSDART.Content)

$MDT = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/refs/heads/main/Individual%20Scripts/CLI-based/Advanced/Utilities-Software/MDT.ps1")
Invoke-Expression $($MDT.Content)

Write-Host "Processing downloads for: Security software..." -ForegroundColor DarkBlue -BackgroundColor White

$MBAM = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/CLI-based/Management%20PC/Security/Anti-Malware/MalwareBytes.ps1")
Invoke-Expression $($MBAM.Content)
