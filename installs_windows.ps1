$apps = @(
    "Docker.DockerDesktop",
    "Microsoft.PowerShell",
    "VSCodium.VSCodium",
    "7zip.7zip",
    "Google.Chrome",
    "Valve.Steam",
    "qBittorrent.qBittorrent",
    "OpenJS.NodeJS.LTS",
    "Oracle.JDK.21",
    "VideoLAN.VLC",
    "Python.Python.3.12",
    "Notepad++.Notepad++",
    "dbeaver.dbeaver",
    "SumatraPDF.SumatraPDF",
    "Ventoy.Ventoy",
    "ONLYOFFICE.DesktopEditors",
    "Bruno.Bruno",
    "PuTTY.PuTTY",
    "Oracle.VirtualBox",
    "Rufus.Rufus",
    "Discord.Discord")
    
    # Filezilla

foreach ($app in $apps) {
    Write-Output "winget install $app --accept-source-agreements --accept-package-agreements" | Invoke-Expression
}