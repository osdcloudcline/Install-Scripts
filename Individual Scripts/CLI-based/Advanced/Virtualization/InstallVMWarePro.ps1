$Filelocation = "C:\downloads\VMware-workstation-17.6.0-24238078.exe"

Write-Verbose "Installing VMWare Workstation Professional 17.6 Build 24238078..." -Verbose
Write-Host
Start-Process -FilePath $Filelocation -ArgumentList '/s','/v"/qn"'
