$Filelocation = "C:\downloads\VMware-workstation-17.6.0-24238078.exe"

Start-Process -FilePath $Filelocation -ArgumentList '/s','/v"/qn"'
