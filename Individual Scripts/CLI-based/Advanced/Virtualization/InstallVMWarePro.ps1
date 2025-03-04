$Filelocation = "C:\downloads\VMware-workstation-17.6.3-24583834.exe"

Write-Verbose "Installing VMWare Workstation Professional 17.6.3 Build 24583834..." -Verbose
Write-Host
Start-Process -FilePath $Filelocation -ArgumentList '/s','/v"/qn"'
