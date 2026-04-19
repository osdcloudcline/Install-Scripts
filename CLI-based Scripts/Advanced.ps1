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


Write-Host "Applying configuration to $env:computername..." -ForegroundColor DarkBlue -BackgroundColor White

Write-Host "Processing: Mandatory System Configuration Pre-Requisites..." -ForegroundColor Cyan

Write-Verbose "Step 1 - PowerShell Package Providers..." -Verbose
Write-Host

$PSProviders = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/refs/heads/main/PowerShell%20Modules/Package%20Providers/Install.ps1")
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

$ClientRegistry = Invoke-WebRequest ("https://github.com/osdcloudcline/Install-Scripts/raw/refs/heads/main/Registry%20Modifications/ClientOSRegistry.ps1")
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

$Browsers = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/refs/heads/main/Individual%20Scripts/CLI-based/Advanced/Browsers/AdvancedBrowsers.ps1")
Invoke-Expression $($Browsers.Content)

Write-Host "Processing install for: Cloud Backup software..." -ForegroundColor DarkBlue -BackgroundColor White

$CloudBackups = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/refs/heads/main/Individual%20Scripts/CLI-based/Advanced/Cloud%20Backups/AdvancedCloudBackups.ps1")
Invoke-Expression $($CloudBackups.Content)

Write-Host "Processing install for: Dev Tools software..." -ForegroundColor DarkBlue -BackgroundColor White

$DevTools = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/refs/heads/main/Individual%20Scripts/CLI-based/Advanced/Dev%20Tools/AdvancedDevTools.ps1")
Invoke-Expression $($DevTools.Content)


Write-Host "Processing install for: File Transfer software..." -ForegroundColor DarkBlue -BackgroundColor White

$AdvancedFileTransfer = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/refs/heads/main/Individual%20Scripts/CLI-based/Advanced/File%20Transfer/AdvancedFileTransfer.ps1")
Invoke-Expression $($AdvancedFileTransfer.Content)

Write-Host "Processing install for: Gaming software..." -ForegroundColor DarkBlue -BackgroundColor White

$AdvancedGaming = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/refs/heads/main/Individual%20Scripts/CLI-based/Advanced/Gaming/AdvancedGaming.ps1")
Invoke-Expression $($AdvancedGaming.Content)

Write-Host "Processing install for: Media software..." -ForegroundColor DarkBlue -BackgroundColor White

$AdvancedMedia = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/refs/heads/main/Individual%20Scripts/CLI-based/Advanced/Media/AdvancedMedia.ps1")
Invoke-Expression $($AdvancedMedia.Content)

Write-Host "Processing install for: Productivity software..." -ForegroundColor DarkBlue -BackgroundColor White

$AcrobatReaderDC = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/CLI-based/Advanced/Productivity/AcrobatReaderDC.ps1")
Invoke-Expression $($AcrobatReaderDC.Content)

$Office2024 = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/CLI-based/Advanced/Productivity/Office2024.ps1")
Invoke-Expression $($Office2024.Content)

pause

Write-Host "Processing install for: Programming software..." -ForegroundColor DarkBlue -BackgroundColor White

$AdvancedProgramming = InvokeWebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/refs/heads/main/Individual%20Scripts/CLI-based/Advanced/Programming/AdvancedProgramming.ps1")
Invoke-Expression $($AdvancedProgramming.Content)

Write-Host "Processing install for: Vitual Desktop Interface software..." -ForegroundColor DarkBlue -BackgroundColor White

$AnyDesk = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/CLI-based/Advanced/VDI-RemoteDesktop/AnyDesk.ps1")
Invoke-Expression $($AnyDesk.Content)

$MSRemoteDesktop = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/CLI-based/Advanced/VDI-RemoteDesktop/MSRemoteDesktop.ps1")
Invoke-Expression $($MSRemoteDesktop.Content)

$VMWareHorizon = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/CLI-based/Advanced/VDI-RemoteDesktop/VMWareHorizon.ps1")
Invoke-Expression $($VMWareHorizon.Content)


Write-Host "Processing install for: Virtualization software..." -ForegroundColor DarkBlue -BackgroundColor White

$VMWareWSPro = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/CLI-based/Advanced/Virtualization/VMWareWorkstationPro.ps1")
Invoke-Expression $($VMWareWSPro.Content)

$VMWareWSPro2 = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/refs/heads/main/Individual%20Scripts/CLI-based/IT%20Tech/Virtualization/InstallVMWare.ps1")
Invoke-Expression $($VMWareWSPro2.Content)

Write-Host "Processing install for: System Utilities - Hardware..." -ForegroundColor DarkBlue -BackgroundColor White

$LogitechOptions = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/CLI-based/Advanced/Utilities-Hardware/LogitechOptions.ps1")
Invoke-Expression $($LogitechOptions.Content)

$LogitechUnifying = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/CLI-based/Advanced/Utilities-Hardware/LogitechUnifying.ps1")
Invoke-Expression $($LogitechUnifying.Content)

$SamsungMagician = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/CLI-based/Advanced/Utilities-Hardware/SamsungMagician.ps1")
Invoke-Expression $($SamsungMagician.Content)

$CrucialStorage = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/CLI-based/Advanced/Utilities-Hardware/CrucialStorage.ps1")
Invoke-Expression $($CrucialStorage.Content)

$MSMouseKB = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/CLI-based/Advanced/Utilities-Hardware/MSMouseKeyboard.ps1")
Invoke-Expression $($MSMouseKB.Content)

$FanUtilities = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/CLI-based/Manufacturer-Specific%20Scripts/Lian-Li/Lian-Li.ps1")
Invoke-WebRequest $($FanUtilities.Content)

$WD = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/refs/heads/main/Individual%20Scripts/CLI-based/Advanced/Utilities-Hardware/WesternDigital.ps1")
Invoke-Expressionb $($WD.Content)

Write-Host "Processing install for: System Utilities - Software..." -ForegroundColor DarkBlue -BackgroundColor White

$7Zip = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/CLI-based/Advanced/Utilities-Software/7Zip.ps1")
Invoke-Expression $($7Zip.Content)

$CCleaner = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/CLI-based/Advanced/Utilities-Software/CCleaner.ps1")
Invoke-Expression $($CCleaner.Content)

$DDU = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/CLI-based/Advanced/Utilities-Software/DDU.ps1")
Invoke-Expression $($DDU.Content)

$SmartDefrag = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/CLI-based/Advanced/Utilities-Software/SmartDefrag.ps1")
Invoke-Expression $($SmartDefrag.Content)

$OSKits = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/CLI-based/Advanced/Utilities-Software/Win11-22H2-OSKits.ps1")
Invoke-Expression $($OSKits.Content)

$WiseRegistryCleaner = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/CLI-based/Advanced/Utilities-Software/WiseRegistryCleaner.ps1")
Invoke-Expression $($WiseRegistryCleaner.Content)

$HardwareMonitorPRO = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/CLI-based/Advanced/Utilities-Software/HardwareMonitorPRO.ps1")
Invoke-Expression $($HardwareMonitorPro.Content)

Write-Host "Processing downloads for: Security software..." -ForegroundColor DarkBlue -BackgroundColor White

$MBAM = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/CLI-based/Advanced/Security/Anti-Malware/MalwareBytes.ps1")
Invoke-Expression $($MBAM.Content)

$BDTS = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/CLI-based/Advanced/Security/Anti-Virus/BitDefender.ps1")
Invoke-Expression $($BDTS.Content)

$N360 = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/CLI-based/Advanced/Security/Anti-Virus/Norton360.ps1")
Invoke-Expression $($N360.Content)

$IPVanish = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/CLI-based/Advanced/Security/VPN/IPVanish.ps1")
Invoke-Expression $($IPVanish.Content)

$NordVPN = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/CLI-based/Advanced/Security/VPN/NordVPN.ps1")
Invoke-Expression $($NordVPN.Content)

Write-Host "Processing install for: System Rescue Downloads..." -ForegroundColor DarkBlue -BackgroundColor White

$Clonezilla = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/refs/heads/main/Individual%20Scripts/CLI-based/System%20Rescue/Clonezilla.ps1")
Invoke-Expression $($Clonezilla.Content)

$HirenBootCD = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/refs/heads/main/Individual%20Scripts/CLI-based/System%20Rescue/HirenBootCD.ps1")
Invoke-Expression $($HirenBootCD.Content)

