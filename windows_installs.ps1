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
    "JetBrains.IntelliJIDEA.Community",
    "Notepad++.Notepad++",
    "Oracle.VirtualBox",
    "dbeaver.dbeaver",
    "SumatraPDF.SumatraPDF")

foreach ($app in $apps) {
    Write-Output "winget install $app --accept-source-agreements --accept-package-agreements" | Invoke-Expression
}