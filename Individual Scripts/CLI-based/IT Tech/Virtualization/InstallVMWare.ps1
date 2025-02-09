$Filelocation = "C:\downloads\VMware-workstation-17.6.2-24409262.exe"

Write-Verbose "Installing VMWare Workstation Professional 17.6.2 Build 24409262..." -Verbose
Write-Host
Start-Process -FilePath $Filelocation -ArgumentList '/s','/v"/qn"'
