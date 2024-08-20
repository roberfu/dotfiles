$apps = @(
    "Google.Chrome",
    "Valve.Steam",
    "qBittorrent.qBittorrent",
    "VideoLAN.VLC",
    "Notepad++.Notepad++",
    "SumatraPDF.SumatraPDF",
    "ONLYOFFICE.DesktopEditors",
    "Discord.Discord",
    "Logitech.GHUB",
    "ThePokemonCompany.PokemonTCGLive",
    "WizardsoftheCoast.MTGALauncher"
    "wez.wezterm")

foreach ($app in $apps) {
    Write-Output "winget install $app --accept-source-agreements --accept-package-agreements" | Invoke-Expression
}
