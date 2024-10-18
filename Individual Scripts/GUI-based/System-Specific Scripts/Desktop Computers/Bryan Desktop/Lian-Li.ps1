$LConnect3 = "https://github.com/osdcloudcline/Software/raw/refs/heads/main/Utilities/Lian-Li/L-Connect%203/v%202.0.18/LConnect3.ps1"

Invoke-WebRequest("https://github.com/osdcloudcline/Software/raw/refs/heads/main/Utilities/Lian-Li/L-Connect%203/v%202.0.18/LConnect3.ps1")
Invoke-Expression $($LConnect3.Content)

