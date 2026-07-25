$providers = @('NuGet',
'Chocolatey',
'PowerShellGet',
'DockerMsftProvider',
'ChocolateyGet',
'WinGet',
'ChocoOneGet',
'OfficeProvider'
)

foreach($provider in $providers){
Write-Host "Installing Windows PowerShell Package Provider: $provider" -ForegroundColor Cyan
Write-Host
            Install-PackageProvider -Name $provider -Force 
Write-Host
Write-Host "Completed installation of Windows PowerShell Package Provider: $provider" -ForegroundColor Green

}

Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
