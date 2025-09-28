Install-Module -Name OSD -Force
Import-Module -Name OSD -Force

Install-Module -Name 7Zip4Powershell -Force
Import-Module -Name 7Zip4Powershell -Force

winget install --id Chocolatey.Chocolatey --silent --exact --accept-source-agreements --accept-source-agreements --force --source winget
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V -All -NoRestart

$WSADLURL1 = "http://tlu.dl.delivery.mp.microsoft.com/filestreamingservice/files/a2d3c8e4-ff45-4291-8888-1472ee125fb5?P1=1759062178&P2=404&P3=2&P4=kL%2b8NH1lQvqsV3vk2lYDhW9zDsbdZamkg4g6AQ9jRstVYgQ2lU1nFrl1QwSyLPpLqvMmQI0HvtWz0irrv1qEfw%3d%3d"

$destination = "C:\downloads\OS\MSIX\WSA"


New-Item -Path $destination -ItemType Directory -Force

Save-WebFile -SourceUrl $WSADLURL1 -DestinationDirectory $destination

Rename-Item -Path "C:\downloads\OS\MSIX\WSA\a2d3c8e4-ff45-4291-8888-1472ee125fb5" -NewName "C:\downloads\OS\MSIX\WSA\MicrosoftCorporationII.WindowsSubsystemForAndroid_2305.40000.4.0_neutral_~_8wekyb3d8bbwe.Msixbundle"

Add-AppxPackage "C:\downloads\OS\MSIX\WSA\MicrosoftCorporationII.WindowsSubsystemForAndroid_2305.40000.4.0_neutral_~_8wekyb3d8bbwe.Msixbundle" 

winget install --id Microsoft.DotNet.SDK.8 --silent --exact --accept-source-agreements --accept-source-agreements --force
winget install --id Microsoft.DotNet.AspNetCore.3_1 --silent --exact --accept-source-agreements --accept-source-agreements --force
winget install --id Microsoft.DotNet.AspNetCore.5 --silent --exact --accept-source-agreements --accept-source-agreements --force 
winget install --id Microsoft.DotNet.AspNetCore.6 --silent --exact --accept-source-agreements --accept-source-agreements --force
winget install --id Microsoft.DotNet.AspNetCore.7 --silent --exact --accept-source-agreements --accept-source-agreements --force
winget install --id Microsoft.DotNet.AspNetCore.8 --silent --exact --accept-source-agreements --accept-source-agreements --force

winget install --id  Microsoft.DotNet.Runtime.3_1 --silent --exact --accept-source-agreements --accept-source-agreements --force
winget install --id Microsoft.DotNet.Runtime.5 --silent --exact --accept-source-agreements --accept-source-agreements --force
winget install --id Microsoft.DotNet.Runtime.6 --silent --exact --accept-source-agreements --accept-source-agreements --force
winget install --id Microsoft.DotNet.Runtime.7 --silent --exact --accept-source-agreements --accept-source-agreements --force
winget install --id Microsoft.DotNet.Runtime.8 --silent --exact --accept-source-agreements --accept-source-agreements --force
winget install --id Microsoft.DotNet.Runtime.9 --silent --exact --accept-source-agreements --accept-source-agreements --force

winget install --id Microsoft.DotNet.Framework.DeveloperPack_4 --silent --exact --accept-source-agreements --accept-source-agreements --force

winget install --id Microsoft.VCRedist.2005.x64 --silent --exact --accept-source-agreements --accept-source-agreements --force
winget install --id Microsoft.VCRedist.2005.x86 --silent --exact --accept-source-agreements --accept-source-agreements --force
winget install --id Microsoft.VCRedist.2008.x64 --silent --exact --accept-source-agreements --accept-source-agreements --force
winget install --id Microsoft.VCRedist.2008.x86 --silent --exact --accept-source-agreements --accept-source-agreements --force 
winget install --id Microsoft.VCRedist.2010.x64 --silent --exact --accept-source-agreements --accept-source-agreements --force 
winget install --id Microsoft.VCRedist.2010.x86 --silent --exact --accept-source-agreements --accept-source-agreements --force 
winget install --id Microsoft.VCRedist.2012.x64 --silent --exact --accept-source-agreements --accept-source-agreements --force 
winget install --id Microsoft.VCRedist.2012.x86 --silent --exact --accept-source-agreements --accept-source-agreements --force 
winget install --id Microsoft.VCRedist.2013.x64 --silent --exact --accept-source-agreements --accept-source-agreements --force 
winget install --id Microsoft.VCRedist.2013.x86 --silent --exact --accept-source-agreements --accept-source-agreements --force
winget install --id Microsoft.VCRedist.2015+.x64 --silent --exact --accept-source-agreements --accept-source-agreements --force
winget install --id Microsoft.VCRedist.2015+.x86  --silent --exact --accept-source-agreements --accept-source-agreements --force
choco install vcredist2017 -y

winget install --id Oracle.JavaRuntimeEnvironment --silent --exact --accept-source-agreements --accept-source-agreements --force

winget install --id Microsoft.XNARedist --silent --exact --accept-source-agreements --accept-source-agreements --force

winget install --id CreativeTechnology.OpenAL --silent --exact --accept-source-agreements --accept-source-agreements --force

winget install --id Microsoft.Edge --silent --exact --accept-source-agreements --accept-source-agreements --force
winget install --id Microsoft.EdgeDriver --silent --exact --accept-source-agreements --accept-source-agreements --force

winget install --id Microsoft.WindowsTerminal --silent --exact --accept-source-agreements --accept-source-agreements --force
winget install --id Microsoft.PowerShell --silent --exact --accept-source-agreements --accept-source-agreements --force
winget install --id Microsoft.WindowsAdminCenter --silent --exact --accept-source-agreements --accept-source-agreements --force
winget install --id Microsoft.Sysinternals.Suite  --silent --exact --accept-source-agreements --accept-source-agreements --force
