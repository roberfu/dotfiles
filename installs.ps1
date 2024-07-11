$apps = @(
    "Docker.DockerDesktop",
    "Microsoft.PowerShell",
    "VSCodium.VSCodium",
    "Google.Chrome",
    "Valve.Steam",
    "qBittorrent.qBittorrent",
    "VideoLAN.VLC",
    "Notepad++.Notepad++",
    "SumatraPDF.SumatraPDF",
    "ONLYOFFICE.DesktopEditors",
    "Discord.Discord",
    "Logitech.GHUB",
    "Oracle.JDK.21",
    "Python.Python.3.12",
    "OpenJS.NodeJS.LTS",
    "Mozilla.Firefox.DeveloperEdition",
    "ThePokemonCompany.PokemonTCGLive")

foreach ($app in $apps) {
    Write-Output "winget install $app --accept-source-agreements --accept-package-agreements" | Invoke-Expression
}