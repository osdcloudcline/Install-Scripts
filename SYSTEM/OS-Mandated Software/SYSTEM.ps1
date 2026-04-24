
# Define the SYSTEM Software using Hash Tables @{ }
$SYSTEMSoftware = @(
   @{ Name = "Chocolatey Package Manager"; ID = "Chocolatey.Chocolatey" }
   @{ Name = "Microsoft .NET SDK 10.0"; ID = "Microsoft.DotNet.SDK.10" } 
   @{ Name = "Microsoft ASP .NET Core 3.1"; ID = "Microsoft.DotNet.AspNetCore.3_1" }
   @{ Name = "Microsoft ASP .NET Core 5.0"; ID = "Microsoft.DotNet.AspNetCore.5" }
   @{ Name = "Microsoft ASP .NET Core 6.0"; ID = "Microsoft.DotNet.AspNetCore.6" }
   @{ Name = "Microsoft ASP .NET Core 7.0"; ID = "Microsoft.DotNet.AspNetCore.7" }
   @{ Name = "Microsoft ASP .NET Core 8.0"; ID = "Microsoft.DotNet.AspNetCore.8" }
   @{ Name = "Microsoft ASP .NET Core 9.0"; ID = "Microsoft.DotNet.AspNetCore.9" }
   @{ Name = "Microsoft ASP .NET Core 10.0"; ID = "Microsoft.DotNet.AspNetCore.10" }
   @{ Name = "Microsoft .NET Desktop Runtime 3.1"; ID = "Microsoft.DotNet.DesktopRuntime.3_1" }
   @{ Name = "Microsoft .NET Desktop Runtime 5.0"; ID = "Microsoft.DotNet.DesktopRuntime.5" }
   @{ Name = "Microsoft .NET Desktop Runtime 6.0"; ID = "Microsoft.DotNet.DesktopRuntime.6" }
   @{ Name = "Microsoft .NET Desktop Runtime 7.0"; ID = "Microsoft.DotNet.DesktopRuntime.7" }
   @{ Name = "Microsoft .NET Desktop Runtime 8.0"; ID = "Microsoft.DotNet.DesktopRuntime.8" }
   @{ Name = "Microsoft .NET Desktop Runtime 9.0"; ID = "Microsoft.DotNet.DesktopRuntime.9" }
   @{ Name = "Microsoft .NET Desktop Runtime 10.0"; ID = "Microsoft.DotNet.DesktopRuntime.10" }
   @{ Name = "Microsoft .NET Runtime 2.2"; ID = "Microsoft.DotNet.Runtime.2_2" }
   @{ Name = "Microsoft .NET Runtime 3.1"; ID = "Microsoft.DotNet.Runtime.3_1" } # Fixed stray quote here
   @{ Name = "Microsoft .NET Runtime 7.0"; ID = "Microsoft.DotNet.Runtime.7" }
   @{ Name = "Microsoft .NET Runtime 8.0"; ID = "Microsoft.DotNet.Runtime.8" }
   @{ Name = "Microsoft .NET Runtime 9.0"; ID = "Microsoft.DotNet.Runtime.9" }
   @{ Name = "Microsoft .NET Runtime 10.0"; ID = "Microsoft.DotNet.Runtime.10" }
   @{ Name = "Microsoft .NET Framework 4.8.1"; ID = "Microsoft.DotNet.Framework.Runtime" }
   @{ Name = "Microsoft Visual C++ 2005 x64"; ID = "Microsoft.VCRedist.2005.x64" }
   @{ Name = "Microsoft Visual C++ 2005 x86"; ID = "Microsoft.VCRedist.2005.x86" }
   @{ Name = "Microsoft Visual C++ 2008 x64"; ID = "Microsoft.VCRedist.2008.x64" }
   @{ Name = "Microsoft Visual C++ 2008 x86"; ID = "Microsoft.VCRedist.2008.x86" }
   @{ Name = "Microsoft Visual C++ 2010 x64"; ID = "Microsoft.VCRedist.2010.x64" }
   @{ Name = "Microsoft Visual C++ 2010 x86"; ID = "Microsoft.VCRedist.2010.x86" }
   @{ Name = "Microsoft Visual C++ 2012 x64"; ID = "Microsoft.VCRedist.2012.x64" }
   @{ Name = "Microsoft Visual C++ 2012 x86"; ID = "Microsoft.VCRedist.2012.x86" }
   @{ Name = "Microsoft Visual C++ 2013 x64"; ID = "Microsoft.VCRedist.2013.x64" }
   @{ Name = "Microsoft Visual C++ 2013 x86"; ID = "Microsoft.VCRedist.2013.x86" }
   @{ Name = "Microsoft Visual C++ 2015+ x64"; ID = "Microsoft.VCRedist.2015+.x64" }
   @{ Name = "Microsoft Visual C++ 2015+ x86"; ID = "Microsoft.VCRedist.2015+.x86" }
   @{ Name = "Oracle JAVA 8.0"; ID = "Oracle.JavaRuntimeEnvironment" }
   @{ Name = "Microsoft XNA Framework 4.0"; ID = "Microsoft.XNARedist" }
   @{ Name = "Open AL"; ID = "CreativeTechnology.OpenAL" }
   @{ Name = "Microsoft DirectX 9"; ID = "Microsoft.DirectX" }
   @{ Name = "Windows App"; ID = "Microsoft.WindowsApp" }
   @{ Name = "Windows App Runtime 1.8"; ID = "Microsoft.WindowsAppRuntime.1.8" }
   @{ Name = "Microsoft Edge"; ID = "Microsoft.Edge" }
   @{ Name = "Microsoft Windows Terminal"; ID = "Microsoft.WindowsTerminal" }
)

# Install Chocolatey via Official Script
Set-ExecutionPolicy Bypass -Scope Process -Force; 
[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; 
iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

$ChocoSYSTEMSoftware = @(
    @{ Name = "Microsoft Visual C++ 2017"; ID = "vcredist2017" }
)

# Process WinGet Items
foreach($App in $SYSTEMSoftware){
    Write-Host "`nProcessing install for: $($App.Name)" -ForegroundColor Cyan
    # Added --silent and --accept-package-agreements for better automation
    winget install --id $($App.ID) --exact --silent --accept-package-agreements --accept-source-agreements --force --source winget
    Write-Host "Completed: $($App.Name) install`n" -ForegroundColor Green
}

# Process Chocolatey Items
foreach($App in $ChocoSYSTEMSoftware){
    Write-Host "`nProcessing install for: $($App.Name)" -ForegroundColor Cyan
    choco install $($App.ID) -y
    Write-Host "Completed: $($App.Name) install`n" -ForegroundColor Green
}

