$ADVprocesses = @(
  @{
    Name = "Processing: Microsoft Windows PowerShell Providers"
    Script = "https://github.com/osdcloudcline/Scripts/raw/main/PowerShell%20Modules/Package%20Providers/Install.ps1"
    },
  @{
    Name = "Processing: Microsoft Windows PowerShell 5.1 Modules"
    Script = "https://github.com/osdcloudcline/Scripts/raw/main/PowerShell%20Modules/Version%205.1/Install.ps1"
    },
  @{
   Name = "Processing: Microsoft Windows PowerShell 7.1 Modules"
   Script = "https://github.com/osdcloudcline/Scripts/raw/main/PowerShell%20Modules/Version%207.x/Install.ps1"
   },
  @{
  Name = "Processing: Client Operating System SYSTEM Registry Entries - Windows Safe Mode"
  Script = "https://github.com/osdcloudcline/Scripts/raw/main/Registry%20Modifications/Client%20Operating%20System/Scripts/AddSafeMode.ps1"
  },
  @{
  Name = "Processing: Client Operating System SYSTEM Registry Entries - Check For Updates"
  Script = "https://github.com/osdcloudcline/Scripts/raw/main/Registry%20Modifications/Client%20Operating%20System/Scripts/CheckForUpdates.ps1"
  },
  @{
  Name = "Processing: Client Operating System SYSTEM Registry Entries - CopyTo/MoveTo"
  Script = "https://github.com/osdcloudcline/Scripts/raw/main/Registry%20Modifications/Client%20Operating%20System/Scripts/CopyToMoveTo.ps1"
  },
  @{
  Name = "Processing: Client Operating System SYSTEM Registry Entries - Disable BitLocker Drive Encryption"
  Script = "https://github.com/osdcloudcline/Scripts/raw/main/Registry%20Modifications/Client%20Operating%20System/Scripts/DisableBitLockerDeviceEncryption.ps1"
  },
  @{
  Name = "Processing: Client Operating System SYSTEM Registry Entries - Disable Windows Co-Pilot"
  Script = "https://github.com/osdcloudcline/Scripts/raw/main/Registry%20Modifications/Client%20Operating%20System/Scripts/DisableWindowsCopilot.ps1"
  },
  @{
  Name = "Processing: Client Operating System SYSTEM Registry Entries - Disable Windows Recall"
  Script = "https://github.com/osdcloudcline/Scripts/raw/main/Registry%20Modifications/Client%20Operating%20System/Scripts/DisableWindowsRecall.ps1"
  },
  @{
  Name = "Processing: Client Operating System SYSTEM Registry Entries - OS Desktop Icons"
  Script = "https://github.com/osdcloudcline/Scripts/raw/main/Registry%20Modifications/Client%20Operating%20System/Scripts/OSDesktopIcons.ps1"
  },
  @{
  Name = "Processing: Client Operating System SYSTEM Registry Entries - Enabling Show Hidden Files and Folders"
  Script = "https://github.com/osdcloudcline/Scripts/raw/main/Registry%20Modifications/Client%20Operating%20System/Scripts/ShowHiddenFilesFolders.ps1"
  },
  @{
  Name = "Processing: Client Operating System SYSTEM Registry Entries - Enable Windows 11 Verbose Status"
  Script = "https://github.com/osdcloudcline/Scripts/raw/main/Registry%20Modifications/Client%20Operating%20System/Scripts/EnableWindows11VerboseStatus.ps1"
  },
  @{
  Name = "Processing: Client Operating System SYSTEM Registry Entries - Enable SUDO Command in New Window"
  Script = "https://github.com/osdcloudcline/Scripts/raw/main/Registry%20Modifications/Client%20Operating%20System/Scripts/EnableSUDO.ps1"
  },
  @{
  Name = "Processing: Client Operating System SYSTEM Registry Entries - Disable Windows Defender"
  Script = "https://github.com/osdcloudcline/Scripts/raw/main/Registry%20Modifications/Client%20Operating%20System/Scripts/DisableWindowsDefender.ps1"
  },
  @{
  Name = "Processing: Client Operating System SYSTEM Registry Entries - Remove Windows 11 Start Menu Recommended Section"
  Script = "https://github.com/osdcloudcline/Scripts/raw/main/Registry%20Modifications/Client%20Operating%20System/Scripts/RemoveRecommendedStartMenu.ps1"
  },
  @{
  Name = "Processing: Client Operating System SOFTWARE Registry Entries - Adobe Inc."
  Script = "https://github.com/osdcloudcline/Scripts/raw/main/Registry%20Modifications/Software/Scripts/Adobe.ps1"
  },
  @{
  Name = "Processing: Client Operating System SOFTWARE Registry Entries - 3D Mark Benchmarking"
  Script = "https://github.com/osdcloudcline/Scripts/raw/main/Registry%20Modifications/Software/Scripts/3DMark.ps1"
  },
  @{
  Name = "Processing: Client Operating System SOFTWARE Registry Entries - PC Mark 10 Benchmarking"
  Script = "https://github.com/osdcloudcline/Scripts/raw/main/Registry%20Modifications/Software/Scripts/PCMark10.ps1"
  },
  @{
  Name = "Processing: Client Operating System SOFTWARE Registry Entries - VMWare Workstation Pro 17.6.0 Build 24238078"
  Script = "https://github.com/osdcloudcline/Scripts/raw/main/Registry%20Modifications/Software/Scripts/VMWare.ps1"
  },
  @{
  Name = "Processing: Windows Client - Remote System Administration Tools"
  Script = "https://github.com/osdcloudcline/Scripts/raw/main/PostInstall/Client%20OS%20Roles%20/InstallClientRSAT.ps1"
  },
  @{
  Name = "Processing: Mandatory Operating System-related SYSTEM Software"
  Script = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/SYSTEM/OS-Mandated%20Software/SYSTEM.ps1"
  },
  @{
  Name = "Processing: Web Browser Software"
  Script = "https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/GUI-based/Advanced/Browsers.ps1"
  },
  @{
  Name = "Processing: Cloud Backup Software" 
  Script = "https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/GUI-based/Advanced/CloudBackups.ps1"
  },
  @{
  Name = "Processing: Dev Tools Software" 
  Script = "https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/GUI-based/Advanced/DevTools.ps1"
  },
  @{
  Name = "Processing: File Transfer Software"
  Script = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/GUI/Advanced/FileTransfer.ps1"
  },
  @{
  Name = "Processing: Gaming Software"
  Script = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/GUI/Advanced/Gaming.ps1"
  },
  @{
  Name = "Processing: Media Software"
  Script = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/GUI/Advanced/Media.ps1"
  },
  @{
  Name = "Processing: Productivity Software"
  Script = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/GUI/Advanced/Productivity.ps1"
  },
  @{
  Name = "Processing: Downloading Microsoft Office 2021 GitHub Files"
  Script = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/Productivity/Advanced/GUI%20Scripts/Office2021GHDownload.ps1"
  Start-Sleep -Seconds 30
  },
  @{
  Name = "Processing: Downloading Microsoft Office 2021 LTSC"
  Script = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/Productivity/Advanced/GUI%20Scripts/Office2021Download.ps1"
  Start-Sleep -Seconds 45
  },
  @{
  Name = "Processing: Microsoft Office 2021 LTSC"
  Script = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/Productivity/Advanced/GUI%20Scripts/Office2021Install.ps1"
  },
  @{
  Name = "Processing: Programming Software"
  Script = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/GUI/Advanced/Programming.ps1"
  },
  @{
  Name = "Processing: Remote Connection Software"
  Script = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/GUI/Advanced/RemoteConnections.ps1"
  },
  @{
  Name = "Processing: Utilities Software"
  Script = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/GUI/Advanced/Utilities.ps1"
  },
  @{
  Name = "Processing: Security Software"
  Script = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/GUI/Advanced/Security.ps1"
  },
  @{
  Name = "Processing: Updating Windows"
  Script = ""
  }
  )

  Start-SplashScreen -Processes $ADVprocesses -MessageHeader "Windows Post-Install OOBE System Advanced Client Configuration"
 
  
