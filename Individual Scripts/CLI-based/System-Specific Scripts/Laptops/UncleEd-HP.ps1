Write-Host '                                                                 ' -BackgroundColor White 
Write-Host '              ADVANCED SOFTWARE CONFIGURATION                    ' -ForegroundColor DarkBlue -BackgroundColor White 
Write-Host '          The following software will be installed:              ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '                                                                 ' -BackgroundColor White 
Write-Host '  - Web Browsers: Google Chrome and Mozilla Firefox              ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Cloud Backup: One Drive, DropBox,                            ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Cloud Backup: Google Drive and NextCloud Client              ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - File Transfer: Filezilla, PuTTY and WinSCP                   ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Gaming: Steam Client                                         ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Media: VLC Player, MediaInfo, MKVToolnix, iTunes,            ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Media: MakeMKV, Handbrake, PowerISO, Audacity, FFMPEG        ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Media: Logitech MyHarmony, GIMP, Kodi,                       ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Media: HD Video Converter Factory Pro, DVDFab                ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Productivity: Microsoft Office 2021 LTSC                     ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Productivity: Adobe Master Collection                        ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Programming: VS Code, AI Code Editor,                        ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Programming: Microsoft Visual Studio Enterprise 2022         ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - VDI/Remote Connections: Microsoft Remote Desktop,            ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - VDI/Remote Connections: VMWare Horizon Client,               ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - VDI/Remote Connections: AnyDesk,                             ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - VDI/Remote Connections: Microsoft 365 VDI                    ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Virtualization: VMWare Workstation Pro                       ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Utilities: 7-Zip, CCleaner, DDU                              ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Utilities: Logitech Options, Logitech Unifying Software      ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Utilities: Samsung Magician, Crucial Storage Executive       ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Utilities: Smart Defrag, Wise Registry Cleaner, Rufus        ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Utilities: Windows 11 SDK, ADK, WinPE Add-On                 ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - CUSTOM Utilities: Installed based on PC Name                 ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Security: DOWNLOAD ONLY - MalwareBytes, Norton360            ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '                                                                 ' -BackgroundColor White 
Write-Host '    Uninstallation of software will be available                 ' -ForegroundColor DarkRed -BackgroundColor White
Write-Host '    after script completes                                       ' -ForegroundColor DarkRed -BackgroundColor White
Write-Host '                                                                 ' -BackgroundColor White
pause


Write-Host "Processing install for: SYSTEM Installation Pre-Requisites..." -ForegroundColor DarkBlue -BackgroundColor White

Write-Verbose "Step 1 - Installing Client Software Registry Modifications..." -Verbose

$Adobe = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/refs/heads/main/Registry%20Modifications/Software/Scripts/Adobe.ps1")
Invoke-Expression $($Adobe.Content)

$GlaryUtilities = Invoke-WebReques("https://github.com/osdcloudcline/Scripts/raw/refs/heads/main/Registry%20Modifications/Software/Scripts/GlaryUtilities.ps1")
Invoke-Expression $($GlaryUtilities.Content)

Write-Verbose "Step 2 - PowerShell Package Providers..." -Verbose

$PSProviders = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/PowerShell%20Modules/Package%20Providers/Install.ps1")
Invoke-Expression $($PSProviders.Content)

Write-Verbose "Step 3 - PowerShell 5.1 Modules..." -Verbose

$PS5Modules = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/PowerShell%20Modules/Version%205.1/Install.ps1")
Invoke-Expression $($PS5Modules.Content)

Write-Verbose "Step 4 - Installing PowerShell 7.x ..." -Verbose 

winget install --id Microsoft.PowerShell  --exact --accept-source-agreements  --accept-source-agreements --force

Write-Verbose "Step 5 - Installing Client OS Registry Modifications ..." -Verbose 

$SafeMode = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/refs/heads/main/Registry%20Modifications/Client%20Operating%20System/Scripts/AddSafeMode.ps1")
Invoke-Expression $($SafwMode.Content)

$UpdatesCheck = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/refs/heads/main/Registry%20Modifications/Client%20Operating%20System/Scripts/CheckForUpdates.ps1")
Invoke-Expression $($UpdateCheck.Content)

$CopyToMoveTo = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/refs/heads/main/Registry%20Modifications/Client%20Operating%20System/Scripts/CopyToMoveTo.ps1")
Invoke-Expression $($CopyToMoveTo.Content)

$DisableBitLocker = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/refs/heads/main/Registry%20Modifications/Client%20Operating%20System/Scripts/DisableBitLockerDeviceEncryption.ps1")
Invoke-Expression $($DisableBitlocker.Content)

$DisableCopilot = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/refs/heads/main/Registry%20Modifications/Client%20Operating%20System/Scripts/DisableWindowsCopilot.ps1")
Invoke-Expression $($DisableCopilot.Content)

$DisableRecall = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/refs/heads/main/Registry%20Modifications/Client%20Operating%20System/Scripts/DisableWindowsRecall.ps1")
Invoke-Expression $($DisableRecall.Content)

$EnableSUDO = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/refs/heads/main/Registry%20Modifications/Client%20Operating%20System/Scripts/EnableSUDO.ps1")
Invoke-Expression $($EnableSUDO.Content)

$EnableVerbose = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/refs/heads/main/Registry%20Modifications/Client%20Operating%20System/Scripts/EnableWindows11VerboseStatus.ps1")
Invoke-Expression $($EnableVerbose.Content)

$RemoveRecommendedSM = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/refs/heads/main/Registry%20Modifications/Client%20Operating%20System/Scripts/RemoveRecommendedStartMenu.ps1")
Invoke-Expression $($RemoveRecommended.Content)

$ShowHidden = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/refs/heads/main/Registry%20Modifications/Client%20Operating%20System/Scripts/ShowHiddenFilesFolders.ps1")
Invoke-Expression $($ShowHidden.Content)

$DesktopIcons = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/refs/heads/main/Registry%20Modifications/Client%20Operating%20System/Scripts/OSDesktopIcons.ps1")
Invoke-Expression $($DesktopIcons.Content)

$DisableDefender = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/refs/heads/main/Registry%20Modifications/Client%20Operating%20System/Scripts/DisableWindowsDefender.ps1")
Invoke-Expression $($DisableDefender.Content)

Write-Host "Processing install for: Mandated OS SYSTEM Software..." -ForegroundColor DarkBlue -BackgroundColor White

$SYSTEM = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/refs/heads/main/SYSTEM/OS-Mandated%20Software/Custom/Mike-AWM18R2.ps1")
Invoke-Expression $($SYSTEM.Content)

Write-Host "Processing install for: Web Browsers..." -ForegroundColor DarkBlue -BackgroundColor White

$Chrome = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/CLI-based/Advanced/Browsers/Chrome.ps1")
Invoke-Expression $($Chrome.Content)

Write-Host "Processing install for: Cloud Backup software..." -ForegroundColor DarkBlue -BackgroundColor White

$UPBR = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/CLI-based/Advanced/Cloud%20Backups/UPBR.ps1")
Invoke-Expression $($UPBR.Content)

Write-Host "Processing install for: Productivity software..." -ForegroundColor DarkBlue -BackgroundColor White

$AcrobatReaderDC = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/CLI-based/Advanced/Productivity/AcrobatReaderDC.ps1")
Invoke-Expression $($AcrobatReaderDC.Content)

$Office2024 = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/refs/heads/main/Individual%20Scripts/CLI-based/Advanced/Productivity/Office2024.ps1")
Invoke-Expression $($Office2024.Content)

Write-Host "Processing install for: Media software..." -ForegroundColor DarkBlue -BackgroundColor White

$VLCPlayer = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/CLI-based/Advanced/Media/VLCPlayer.ps1")
Invoke-Expression $($VLCPlayer.Content)

Write-Host "Processing install for: Vitual Desktop Interface software..." -ForegroundColor DarkBlue -BackgroundColor White

$AnyDesk = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/CLI-based/Advanced/VDI-RemoteDesktop/AnyDesk.ps1")
Invoke-Expression $($AnyDesk.Content)

Write-Host "Processing install for: System Utilities - Software..." -ForegroundColor DarkBlue -BackgroundColor White

$7Zip = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/CLI-based/Advanced/Utilities-Software/7Zip.ps1")
Invoke-Expression $($7Zip.Content)

$WiseRegistryCleaner = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/CLI-based/Advanced/Utilities-Software/WiseRegistryCleaner.ps1")
Invoke-Expression $($WiseRegistryCleaner.Content)

$HP = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/refs/heads/main/Individual%20Scripts/CLI-based/Manufacturer-Specific%20Scripts/HP/HP.ps1")
Invoke-Expression $($HP.Content)

Write-Host "Processing downloads for: Security software..." -ForegroundColor DarkBlue -BackgroundColor White

$MBAM = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/CLI-based/Advanced/Security/Anti-Malware/MalwareBytes.ps1")
Invoke-Expression $($MBAM.Content)
