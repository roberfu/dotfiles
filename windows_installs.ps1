winget upgrade --accept-source-agreements --accept-package-agreements

winget upgrade --accept-source-agreements --accept-package-agreements --include-unknown Microsoft.DesktopAppInstaller

winget upgrade --accept-source-agreements --accept-package-agreements --all

$apps = @(
    "7zip.7zip",
    "Docker.DockerDesktop", 
    "Git.Git", 
    "Google.Chrome", 
    "Valve.Steam",
    "qBittorrent.qBittorrent",
    "OpenJS.NodeJS",
    "ThePokemonCompany.PokemonTCGLive",
    "Microsoft.OpenJDK.21",
    "Microsoft.VisualStudioCode",
    "VideoLAN.VLC",
    "Microsoft.PowerShell",
    "Python.Python.3.13",
    "Spotify.Spotify",
    "Alacritty.Alacritty",
    "VSCodium.VSCodium",
    "VMware.WorkstationPlayer")

foreach ($app in $apps) {
    Write-Output "winget install $app --accept-source-agreements --accept-package-agreements"
}