$STDprocesses = @(
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
  Name = "Processing: Client Operating System SYSTEM Registry Entries - Disable and Preventing OS BSOD Reboots "
  Script = "https://github.com/osdcloudcline/Scripts/raw/refs/heads/main/Registry%20Modifications/Client%20Operating%20System/Scripts/PreventBSODReboots.ps1"
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
  Name = "Processing: Mandatory Operating System-related SYSTEM Software"
  Script = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/SYSTEM/OS-Mandated%20Software/SYSTEM.ps1"
  },
  @{
  Name = "Processing: Downloading VMWare Workstation Professional 17.6.0 Build 24238078"
  Script = "https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/GUI-based/Standard/Virtualization.ps1"
  },
  @{
  Name = "Processing: Web Browser Software"
  Script = "https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/GUI-based/Standard/Browsers.ps1"
  },
  @{
  Name = "Processing: Cloud Backup Software" 
  Script = "https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/GUI-based/Standard/CloudBackups.ps1"
  },
  @{
  Name = "Processing: File Transfer Software"
  Script = "https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/GUI-based/Standard/FileTransfer.ps1"
  },
  @{
  Name = "Processing: Gaming Software"
  Script = "https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/GUI-based/Standard/Gaming.ps1"
  },
  @{
  Name = "Processing: Media Software"
  Script = "https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/GUI-based/Standard/Media.ps1"
  },
  @{
  Name = "Processing: Productivity Software"
  Script = "https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/GUI-based/Standard/Productivity.ps1"
  },
  @{
  Name = "Processing: Downloading Microsoft Office 2021 GitHub Files"
  Script = "https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/GUI-based/Standard/Office2021GHDownload.ps1"
  },
  @{
  Name = "Processing: Downloading Microsoft Office 2021 LTSC"
  Script = "https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/GUI-based/Standard/Office2021Download.ps1"
  },
  @{
  Name = "Processing: Microsoft Office 2021 LTSC"
  Script = "https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/GUI-based/Standard/Office2021Install.ps1"
  },
  @{
  Name = "Processing: Programming Software"
  Script = "https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/GUI-based/Standard/Programming.ps1"
  },
  @{
  Name = "Processing: Security Software"
  Script = "https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/GUI-based/Standard/Security.ps1"
  },
  @{
  Name = "Processing: Remote Connection Software"
  Script = "https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/GUI-based/Standard/RemoteConnections.ps1"
  },
  @{
  Name = "Processing: Utilities Software"
  Script = "https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/GUI-based/Standard/Utilities.ps1"
  },
  @{
  Name = "Processing: System Rescue Downloads - Hiren's Boot CD PE x64"
  Script = "https://github.com/osdcloudcline/Install-Scripts/raw/refs/heads/main/Individual%20Scripts/GUI-based/System%20Rescue/HirenBootCD.ps1"
  },
  @{
  Name = "Processing: System Rescue Downloads - CloneZilla 3.2.0-5 x64"
  Script = "https://github.com/osdcloudcline/Install-Scripts/raw/refs/heads/main/Individual%20Scripts/GUI-based/System%20Rescue/Clonezilla.ps1"
  },
    @{
  Name = "Processing: CLIENT OS Theme Pack files from Microsoft"
  Script = "https://github.com/osdcloudcline/Install-Scripts/raw/refs/heads/main/SYSTEM/OS-Mandated%20Software/OS-ThemePacks.ps1"
  },
  @{
  Name = "Processing: Custom CLIENT OS Theme Pack files"
  Script = "https://github.com/osdcloudcline/Install-Scripts/raw/refs/heads/main/SYSTEM/OS-Mandated%20Software/Custom-OS-ThemePacks.ps1"
  },
  @{
  Name = "Processing: Windows Client - Remote System Administration Tools"
  Script = "https://github.com/osdcloudcline/Scripts/raw/main/PostInstall/Client%20OS%20Roles%20/InstallClientRSAT.ps1"
  },
  @{
  Name = "Processing: Updating Windows"
  Script = "https://github.com/osdcloudcline/Update-Scripts/raw/main/Individual%20Scripts/GUI-based/OS%20SYSTEM/OSUpdate.ps1"
  },
  @{
  Name = "Processing: Updating Windows - Drivers"
  Script = "https://github.com/osdcloudcline/Update-Scripts/raw/main/Individual%20Scripts/GUI-based/OS%20SYSTEM/OSUpdateDrivers.ps1"
  }
  )

  Start-SplashScreen -Processes $STDprocesses -MessageHeader "Standard Client Installation - Configuring $env:computername"
