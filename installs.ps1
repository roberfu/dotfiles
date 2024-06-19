$apps = @(
    "Docker.DockerDesktop",
    "Microsoft.PowerShell",
    "VSCodium.VSCodium",
    "Google.Chrome",
    "Valve.Steam",
    "qBittorrent.qBittorrent",
    "VideoLAN.VLC",
    "Notepad++.Notepad++",
    "dbeaver.dbeaver",
    "SumatraPDF.SumatraPDF",
    "ONLYOFFICE.DesktopEditors",
    "Discord.Discord",
    "RazerInc.RazerInstaller",
    "Logitech.GHUB")

foreach ($app in $apps) {
    Write-Output "winget install $app --accept-source-agreements --accept-package-agreements" | Invoke-Expression
}