$HoneypotPprocesses = @(
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
  Name = "Processing: Mandatory Operating System-related SYSTEM Software"
  Script = "https://github.com/osdcloudcline/Install-Scripts/raw/refs/heads/main/SYSTEM/OS-Mandated%20Software/SYSTEM.ps1"
  },
  @{
  Name = "Processing: Web Browser Software"
  Script = "https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/GUI-based/Honeypot/Browsers.ps1"
  },
  @{
  Name = "Processing: Media Software"
  Script = "https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/GUI-based/Honeypot/Media.ps1"
  },
  @{
  Name = "Processing: VM File downloads"
  Script = "https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/GUI-based/Honeypot/FileDLS.ps1"
  },
  @{
  Name = "Processing: Utilities Software"
  Script = "https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/GUI-based/Honeypot/Utilities.ps1"
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

  Start-SplashScreen -Processes $HoneypotPprocesses -MessageHeader "Honeypot Client Installation - Configuring $env:computername"
