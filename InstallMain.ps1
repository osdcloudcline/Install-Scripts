##########################################################
# Main Menu
##########################################################
Function Show-MainMenu{
    [CmdletBinding()]
    param(
    [string]$Title = 'Software Installation Main Menu',
    [string]$Question = 'What type of action do you want to perform?'
)

Clear-Host
Write-Host "======= $Title ======"
Write-Host " 1. CLI Install Scripts"
Write-Host " 2. GUI Install Scripts"
Write-Host " 3. Return to OSD Software Main Menu"
Write-Host " 4. Exit PowerShell"

do
{ 
$selection = Read-Host 'Please choose an option'
  switch($selection)
  {
  '1'{cls
       Show-CLIMenu
     }
 '2'{cls
     Show-GUIMenu
     }
 '3'{cls
     $OSDMain = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/OSDMain.ps1")
     Invoke-Expression ($OSDMain.Content)
    }
 '4'{exit}
    }
    }
 until ($selection -eq '4'){exit}
}

Function Show-CLIMenu{
    [CmdletBinding()]
    param(
    [string]$Title = 'CLI-based Software Installation Main Menu',
    [string]$Question = 'What type of action do you want to perform?'
)

Clear-Host
Write-Host "======= $Title ======"
Write-Host " 1. Install Standard Software Configuration"
Write-Host " 2. Install Advanced Software Configuration"
Write-Host " 3. Install Corporate Software Configuration"
Write-Host " 4. Install Client VDI Software Configuration"
Write-Host " 5. Install Server VDI Software Configuration"
Write-Host " 6. Install Management PC Software Configuration"
Write-Host " 7. Install Honeypot Configuration"
Write-Host " 8. Install IT Tech Configuration"
Write-Host " 9. Return to Software Main Menu"

do
{ 
$selection = Read-Host 'Please choose an option'
  switch($selection)
  {
'1' {cls
       $Standard = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/main/CLI-based%20Scripts/Standard.ps1")
       Invoke-Expression $($Standard.Content)
    }
 '2'{cls
      $Advanced = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/main/CLI-based%20Scripts/Advanced.ps1")
      Invoke-Expression $($Advanced.Content)
     }
 '3'{cls
       $Corporate = Invoke-WebRequest ("https://github.com/osdcloudcline/Install-Scripts/raw/main/CLI-based%20Scripts/Corporate.ps1")
       Invoke-Expression $($Corporate.Content)
    }
 '4'{cls
       $ClientVDI = Invoke-WebRequest ("https://github.com/osdcloudcline/Install-Scripts/raw/main/CLI-based%20Scripts/ClientVDI.ps1")
       Invoke-Expression $($ClientVDI.Content)
    }
'5'{cls
       $ServerVDI = Invoke-WebRequest ("https://github.com/osdcloudcline/Install-Scripts/raw/main/CLI-based%20Scripts/ServerVDI.ps1")
       Invoke-Expression $($ServerVDI.Content)
    } 
 '6'{cls
       $ManagementPC = Invoke-WebRequest ("https://github.com/osdcloudcline/Install-Scripts/raw/main/CLI-based%20Scripts/ManagementPC.ps1")
       Invoke-Expression $($ManagementPC.Content)
     }
 '7'{cls
       $Honeypot = Invoke-WebRequest ("https://github.com/osdcloudcline/Install-Scripts/raw/main/CLI-based%20Scripts/Honeypot.ps1")
       Invoke-Expression $($Honeypot.Content)
    }
 '8'{cls
       $ITTech = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Custom%20Configurations/IT%20Tech/ITTech.ps1")
       Invoke-Expression $($ITTech.Content)
    }
'9'{cls
    Show-MainMenu
    }
     }
 }
 until ($selection -eq '9'){Show-MainMenu}
}

Function Show-GUIMenu(){
    [CmdletBinding()]
    param(
    [string]$Title = 'GUI-based Software Installation Main Menu',
    [string]$Question = 'What type of action do you want to perform?'
)

Clear-Host
Write-Host "======= $Title ======"
Write-Host " 1. Install Standard Software Configuration"
Write-Host " 2. Install Advanced Software Configuration"
Write-Host " 3. Install Corporate Software Configuration"
Write-Host " 4. Install Client VDI Software Configuration"
Write-Host " 5. Install Server VDI Software Configuration"
Write-Host " 6. Install Management PC Software Configuration"
Write-Host " 7. Install Honeypot Configuration"
Write-Host " 8. Install IT Tech Configuration"
Write-Host " 9. Return to Software Main Menu"

do
{ 
$selection = Read-Host 'Please choose an option'
  switch($selection)
  {
  '1' {cls
       $Standard = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Custom%20Configurations/Standard/Standard.ps1")
       Invoke-Expression $($Standard.Content)
       }
 '2'{cls
      $Advanced = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Custom%20Configurations/Advanced/Advanced.ps1")
      Invoke-Expression $($Advanced.Content)
     }
 '3'{cls
       $Corporate = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Custom%20Configurations/Corporate/Corporate.ps1")
       Invoke-Expression $($Corporate.Content)
    }
 '4'{cls
       $ClientVDI = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Custom%20Configurations/VDI/ClientVirtualDesktopInterface.ps1")
       Invoke-Expression $($ClientVDI.Content)
    }
'5'{cls
       $ServerVDI = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Custom%20Configurations/VDI/ServerVirtualDesktopInterface.ps1")
       Invoke-Expression $($ServerVDI.Content)
    } 
 '6'{cls
       $ManagementPC = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Custom%20Configurations/Management%20PC/ManagementPC.ps1")
       Invoke-Expression $($ManagementPC.Content)
     }
 '7'{cls
       $Honeypot = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Custom%20Configurations/Honeypot/Honeypot.ps1")
       Invoke-Expression $($Honeypot.Content)
    }
 '8'{cls
       $ITTech = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Custom%20Configurations/IT%20Tech/ITTech.ps1")
       Invoke-Expression $($ITTech.Content)
    }
  '9'{cls
    Show-MainMenu
    }
     }
 }
 until ($selection -eq '9'){Show-MainMenu}
}

Show-MainMenu 
