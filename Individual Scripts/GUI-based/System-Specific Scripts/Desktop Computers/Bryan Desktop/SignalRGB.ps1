$SignalRGBURL = Invoke-WebRequest( "https://github.com/osdcloudcline/Software/raw/refs/heads/main/Utilities/SignalRGB/SignalRGB.ps1")
Invoke-Expression $($SignalRGB.Content)
