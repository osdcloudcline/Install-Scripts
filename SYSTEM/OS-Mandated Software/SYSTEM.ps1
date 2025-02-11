$OSSoftLogs = "C:\Logs\OSDCloud\Install\SYSTEM\$env:computername-OSSoftware.log"
Start-Transcript -Path $OSSoftLogs

#####################################################################
####                 SOFTWARE VARIABLES                    ##########
#####################################################################

$NETapp1 = ".NET Runtime"
$NETapp1ver = "Version: 3.1.32"

$NETapp2 = ".NET Runtime"
$NETapp2ver = "Version: 5.0.17"

$NETapp3 = ".NET Runtime"
$NETapp3ver = "Version: 6.0.26"

$NETapp4 = ".NET Runtime"
$NETapp4ver = "Version: 7.0.15"

$NETapp5 = ".NET Runtime"
$NETapp5ver = "Version: 8.0.1"

$NETapp6 = ".NET Framework"
$NETapp6ver = "Version: 4.8.1"

$SDKApps1 = ".NET Framework SDK"
$SDKApp1Ver = "Version: 8.0"

$ASPapp1 = ".NET ASP Core"
$ASPapp1ver = "Version: 3.1.32"

$ASPapp2 = ".NET ASP Core"
$ASPapp2ver = "Version: 5.0.17"

$ASPapp3 = ".NET ASP Core"
$ASPapp3ver = "Version: 6.0.33"

$ASPapp4 = ".NET ASP Core"
$ASPapp4ver = "Version: 7.0.20"

$ASPapp5 = ".NET ASP Core"
$ASPapp5ver = "Version: 8.0.8"

$VCRedistributableapp1 = "MS VS C++ Redistributable 2005 x64"
$VCRedistributableapp1ver = "Version: 8.0.61000"

$VCRedistributableapp2 = "MS VS C++ Redistributable 2005 x86"
$VCRedistributableapp2ver = "Version: 8.0.61001"

$VCRedistributableapp3 = "MS VS C++ Redistributable 2008 x64"
$VCRedistributableapp3ver = "Version: 9.0.30729.6161"

$VCRedistributableapp4 = "MS VS C++ Redistributable 2008 x86"
$VCRedistributableapp4ver = "Version: 9.0.30729.6161"

$VCRedistributableapp5 = "MS VS C++ Redistributable 2010 x64"
$VCRedistributableapp5ver = "Version: 10.0.40219"

$VCRedistributableapp6 = "MS VS C++ Redistributable 2010 x86"
$VCRedistributableapp6ver = "Version: 10.0.40219"

$VCRedistributableapp7 = "MS VS C++ Redistributable 2012 x64"
$VCRedistributableapp7ver = "Version: 11.0.61030.0"

$VCRedistributableapp8 = "MS VS C++ Redistributable 2012 x86"
$VCRedistributableapp8ver = "Version: 11.0.61030.0"

$VCRedistributableapp9 = "MS VS C++ Redistributable 2013 x64"
$VCRedistributableapp9ver = "Version: 12.0.40664.0"

$VCRedistributableapp10 = "MS VS C++ Redistributable 2013 x86"
$VCRedistributableapp10ver = "Version: 12.0.40664.0"

$VCRedistributableapp11 = "MS VS C++ Redistributable 2015-2022 x64"
$VCRedistributableapp11ver = "Version: 14.38.33135.0"

$VCRedistributableapp12 = "MS VS C++ Redistributable 2015-2022 x86"
$VCRedistributableapp12ver = "Version: 14.38.33135.0"

$VCRedistributableapp13 = "MS VS C++ Redistributable 2017"
$VCRedistributableapp13ver = "Version: 14.16.27033"

$JAVAapp1 = "Oracle JAVA Runtime Environment 8.0"
$JAVAapp1ver = "Version: 8.0.4010.10"

$XNAapp1 = "MS XNA Framework"
$XNAapp1ver = "Version: 4.0.30901.0"

$OpenALapp1 = "OpenAL Framework"
$OpenALapp1ver = "Version: 1.1"

$OSapp1 = "Microsoft Edge"
$OSapp1ver = "Version: Latest"

$OSapp2 = "Microsoft Windows Terminal"
$OSapp2ver = "Version: 1.19.10302.0"

$OSapp3 = "Microsoft Windows Powershell"
$OSapp3ver = "Version: 7.4.3.0"	

$OSapp4 = "Microsoft PowerToys"
$OSapp4ver = "Version 0.81.1"

$SYSGroup1 = "Microsoft .NET Framework"
$SYSGroup2 = "Microsoft C++ Redistributables"
$SYSGroup3 = "Oracle Java Runtime Environments"
$SYSGroup4 = "Microsoft XNA Framework"
$SYSGroup5 = "Creative Technology Open AL"
$SYSGroup6 = "OS Software"

################################################################

# Package Manager region 

Write-Host "Installing Chocolatey..." -ForegroundColor Cyan 
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

#SDK Region

Write-Host "Installing $SYSGroup1...." -ForegroundColor Cyan
Write-Host
Write-Verbose "Installing $SDKapp1, $SDKApp1Ver..." -Verbose
winget install --id Microsoft.DotNet.SDK.8 --exact --accept-source-agreements --accept-source-agreements --force

#ASP Region 

Write-Host
Write-Verbose "Installing $ASPapp1, $ASPApp1Ver..." -Verbose
winget install --id Microsoft.DotNet.AspNetCore.3_1 --accept-source-agreements --accept-source-agreements --force

Write-Host
Write-Verbose "Installing $ASPapp2, $ASPApp2Ver..." -Verbose
winget install --id Microsoft.DotNet.AspNetCore.5 --accept-source-agreements --accept-source-agreements --force


Write-Host
Write-Verbose "Installing $ASPapp3, $ASPApp3Ver..." -Verbose
winget install --id Microsoft.DotNet.AspNetCore.6 --accept-source-agreements --accept-source-agreements --force

Write-Host
Write-Verbose "Installing $ASPapp4, $ASPApp4Ver..." -Verbose
winget install --id Microsoft.DotNet.AspNetCore.7 --accept-source-agreements --accept-source-agreements --force


Write-Host
Write-Verbose "Installing $ASPapp5, $ASPApp5Ver..." -Verbose
winget install --id Microsoft.DotNet.AspNetCore.8 --accept-source-agreements --accept-source-agreements --force

# NET Region

Write-Host
Write-Verbose "Installing $NETapp1, $NETapp1ver..." -Verbose
winget install --id  Microsoft.DotNet.Runtime.3_1 --exact --accept-source-agreements --accept-source-agreements --force

Write-Host
Write-Verbose "Installing $NETapp2, $NETapp2ver..." -Verbose
winget install --id Microsoft.DotNet.Runtime.5 --exact --accept-source-agreements --accept-source-agreements --force

Write-Host
Write-Verbose "Installing $NETapp3, $NETapp3ver..." -Verbose
winget install --id Microsoft.DotNet.Runtime.6 --exact --accept-source-agreements --accept-source-agreements --force

Write-Host
Write-Verbose "Installing $NETapp4, $NETapp4ver..." -Verbose
winget install --id Microsoft.DotNet.Runtime.7 --exact --accept-source-agreements --accept-source-agreements --force

Write-Host
Write-Verbose "Installing $NETapp5, $NETapp5ver..." -Verbose
winget install --id Microsoft.DotNet.Runtime.8 --accept-source-agreements --accept-source-agreements --force

Write-Host
Write-Verbose "Installing $NETapp6, $NETapp6ver..." -Verbose 
choco install dotnetfx -y

# Visual C Redistributable region 

Write-Host "Installing $SYSGroup2...." -ForegroundColor Cyan
Write-Host
Write-Verbose "Installing $VCRedistributableapp1, $VCRedistributableapp1ver..." -Verbose
winget install --id Microsoft.VCRedist.2005.x64 --exact --accept-source-agreements --accept-source-agreements --force


Write-Host 
Write-Verbose "Installing $VCRedistributableapp2, $VCRedistributableapp2ver..." -Verbose
winget install --id Microsoft.VCRedist.2005.x86 --exact --accept-source-agreements --accept-source-agreements --force

Write-Host
Write-Verbose "Installing $VCRedistributableapp3, $VCRedistributableapp3ver..." -Verbose
winget install --id Microsoft.VCRedist.2008.x64 --exact --accept-source-agreements --accept-source-agreements --force

Write-Host 
Write-Verbose "Installing $VCRedistributableapp4, $VCRedistributableapp4ver..." -Verbose
winget install --id Microsoft.VCRedist.2008.x86 --exact --accept-source-agreements --accept-source-agreements  --force

Write-Host
Write-Verbose "Installing $VCRedistributableapp5, $VCRedistributableapp5ver..." -Verbose
winget install --id Microsoft.VCRedist.2010.x64 --exact --accept-source-agreements --accept-source-agreements --force

Write-Host 
Write-Verbose "Installing $VCRedistributableapp6, $VCRedistributableapp6ver..." -Verbose
winget install --id Microsoft.VCRedist.2010.x86 --exact --accept-source-agreements --accept-source-agreements --force

Write-Host 
Write-Verbose "Installing $VCRedistributableapp7, $VCRedistributableapp7ver..." -Verbose
winget install --id Microsoft.VCRedist.2012.x64 --exact --accept-source-agreements --accept-source-agreements --force

Write-Host 
Write-Verbose "Installing $VCRedistributableapp8, $VCRedistributableapp8ver..." -Verbose
winget install --id Microsoft.VCRedist.2012.x86 --exact --accept-source-agreements --accept-source-agreements --force

Write-Host 
Write-Verbose "Installing $VCRedistributableapp9, $VCRedistributableapp9ver..." -Verbose
winget install --id Microsoft.VCRedist.2013.x64 --exact --accept-source-agreements --accept-source-agreements --force

Write-Host 
Write-Verbose "Installing $VCRedistributableapp10, $VCRedistributableapp10ver..." -Verbose
winget install --id Microsoft.VCRedist.2013.x86 --exact --accept-source-agreements --accept-source-agreements --force

Write-Host
Write-Verbose "Installing $VCRedistributableapp11, $VCRedistributableapp12ver..." -Verbose
winget install --id Microsoft.VCRedist.2015+.x64 --exact --accept-source-agreements --accept-source-agreements --force

Write-Host 
Write-Verbose "Installing $VCRedistributableapp12, $VCRedistributableapp12ver..." -Verbose
winget install --id Microsoft.VCRedist.2015+.x86 --exact --accept-source-agreements --accept-source-agreements --force

Write-Host 
Write-Verbose "Installing $VCRedistributableapp13, $VCRedistributableapp13ver..." -Verbose
choco install vcredist2017 -y

# Oracle JAVA region 

Write-Host "Installing $SYSGroup3...." -ForegroundColor Cyan
Write-Host
Write-Verbose "Installing $JAVAapp1, $JAVAapp1ver..." -Verbose
winget install --id Oracle.JavaRuntimeEnvironment --exact --accept-source-agreements --accept-source-agreements --force
		

# XNA region


Write-Host "Installing $SYSGroup4...." -ForegroundColor Cyan
Write-Host
Write-Verbose "Installing $XNAapp1, $XNAapp1ver..." -Verbose
winget install --id Microsoft.XNARedist --exact --accept-source-agreements --accept-source-agreements --force
		
# Open AL region


Write-Host "Installing $SYSGroup5...." -ForegroundColor Cyan
Write-Host
Write-Verbose "Installing $OpenALapp1, $OpenALapp1ver..." -Verbose
choco install openal -y

# OS Software region


Write-Host "Installing $SYSGroup6...." -ForegroundColor Cyan
Write-Host
Write-Verbose "Installing $OSapp1, $OSapp1ver..." -Verbose
winget install --id Microsoft.Edge --exact --accept-source-agreements --accept-source-agreements --force

Write-Host 
Write-Verbose "Installing $OSapp2, $OSapp2ver..." -Verbose
winget install --id Microsoft.WindowsTerminal --exact --accept-source-agreements --accept-source-agreements --force

Write-Host
Write-Verbose "Installing $OSapp3, $OSapp3ver..." -Verbose
winget install --id Microsoft.PowerShell --exact --accept-source-agreements --accept-source-agreements --force

Write-Host
Write-Verbose "Installing $OSapp4, $OSapp4ver..." -Verbose
winget install --id Microsoft.PowerToys --exact --accept-source-agreements --accept-package-agreements --force

Write-Host "Finished Installing System related software..." -ForegroundColor Yellow

Stop-Transcript
