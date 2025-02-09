$Filelocation = "C:\downloads\VMware-workstation-17.6.1-24319023.exe"

Write-Verbose "Installing VMWare Workstation Professional 17.6.1 Build 24319023..." -Verbose
Write-Host
Start-Process -FilePath $Filelocation -ArgumentList '/s','/v"/qn"'
