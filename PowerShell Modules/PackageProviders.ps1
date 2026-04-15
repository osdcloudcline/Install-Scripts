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
Write-Host "Installing Windows PowerShell Package Provider: $provider -ForegroundColor Cyan
Write-Host 
 Install-PackageProvider -Name $provider -Force -Verbose
Write-Host
Write-Host "Completed installation of Windows PowerShell Package Provider: $provider -ForegroundColor Green

}
