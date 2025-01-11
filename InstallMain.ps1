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
Write-Host " 3. Custom Configuration Install Scripts"
Write-Host " 4. Return to OSD Software Main Menu"
Write-Host " 5. Exit PowerShell"

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
     Show-CustomMenu
     }
 '4'{cls
     $OSDMain = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/OSDMain.ps1")
     Invoke-Expression ($OSDMain.Content)
    }
 '5'{exit}
    }
    }
 until ($selection -eq '5'){exit}
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
Write-Host " 9. Install Server Software"
Write-Host " 10. Return to Software Main Menu"

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
       $ITTech = Invoke-WebRequest ("https://github.com/osdcloudcline/Install-Scripts/raw/main/CLI-based%20Scripts/IT.ps1")
       Invoke-Expression $($ITTech.Content)
    }
 '9'{cls
       $Servers = Invoke-WebRequest ("https://github.com/osdcloudcline/Install-Scripts/raw/main/CLI-based%20Scripts/ServerSoftware.ps1")
       Invoke-Expression $($Servers.Content)
    }
'10'{cls
    Show-MainMenu
    }
     }
 }
 until ($selection -eq '10'){Show-MainMenu}
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
       Install-Script -Name Start-SplashScreen
       $Standard = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Custom%20Configurations/Standard/Standard.ps1")
       Invoke-Expression $($Standard.Content)
       }
 '2'{cls
      Install-Script -Name Start-SplashScreen
      $Advanced = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/main/GUI-based%20Scripts/Advanced.ps1")
      Invoke-Expression $($Advanced.Content)
     }
 '3'{cls
       Install-Script -Name Start-SplashScreen
       $Corporate = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Custom%20Configurations/Corporate/Corporate.ps1")
       Invoke-Expression $($Corporate.Content)
    }
 '4'{cls
       Install-Script -Name Start-SplashScreen
       $ClientVDI = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Custom%20Configurations/VDI/ClientVirtualDesktopInterface.ps1")
       Invoke-Expression $($ClientVDI.Content)
    }
'5'{cls
       Install-Script -Name Start-SplashScreen
       $ServerVDI = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Custom%20Configurations/VDI/ServerVirtualDesktopInterface.ps1")
       Invoke-Expression $($ServerVDI.Content)
    } 
 '6'{cls
       Install-Script -Name Start-SplashScreen
       $ManagementPC = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Custom%20Configurations/Management%20PC/ManagementPC.ps1")
       Invoke-Expression $($ManagementPC.Content)
     }
 '7'{cls
       Install-Script -Name Start-SplashScreen
       $Honeypot = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Custom%20Configurations/Honeypot/Honeypot.ps1")
       Invoke-Expression $($Honeypot.Content)
    }
 '8'{cls
       Install-Script -Name Start-SplashScreen
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

Function Show-CustomMenu(){
    [CmdletBinding()]
    param(
    [string]$Title = 'GUI-based Software Installation Main Menu',
    [string]$Question = 'What type of action do you want to perform?'
)

Clear-Host
Write-Host "======= $Title ======"
Write-Host " 1. Install Bryan Desktop Configuration"
Write-Host " 2. Install Bryan Laptop Configuration"
Write-Host " 3. Install Mike Laptop Configuration"
Write-Host " 4. Install Billy Desktop Configuration"
Write-Host " 5. Install Dad PC Configuration"
Write-Host " 6. Install Mom PC Configuration"
Write-Host " 7. Install Sean PC Configuration"
Write-Host " 8. Install Dave V Configuration"
Write-Host " 9. Return to Software Main Menu"

do
{ 
$selection = Read-Host 'Please choose an option'
  switch($selection)
  {
  '1' {cls
       $BryanDesktop = Invoke-WebRequest("")
       Invoke-Expression $($BryanDesktop.Content)
       }
 '2'{cls
       $BryanLaptop = Invoke-WebRequest("")
       Invoke-Expression $($BryanLaptop.Content)
     }
 '3'{cls 
      $MikeLaptop = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/refs/heads/main/Individual%20Scripts/CLI-based/System-Specific%20Scripts/Laptops/Mike-Alienware%20M18R2.ps1")
     Invoke-Expression $($MikeLaptop.Content)
    }
 '4'{cls
      $BillyDesktop = Invoke-WebRequest("")
     Invoke-Expression $($BillyDesktop.Content)
    }
'5'{cls
       $DadDesktop = Invoke-WebRequest("")
      Invoke-Expression $($DadDesktop.Content)
    } 
 '6'{cls
        $MomDesktop = Invoke-WebRequest("")
       Invoke-Expression $($MomDesktop.Content)
     }
 '7'{cls
       $SeanPC = Invoke-WebRequest("")
       Invoke-Expression $($SeanPC.Content)
    }
 '8'{cls
       $DavePC = Invoke-WebRequest("")
       Invoke-Expression $($DavePC.Content)
    }
  '9'{cls
    Show-MainMenu
    }
     }
 }
 until ($selection -eq '9'){Show-MainMenu}
}

Show-MainMenu 
