$user = $env:USERNAME
$pathScript = $PSScriptRoot

$folders = @(
    @("codium", "\\codium\\.config\\VSCodium\\User\\", "\\AppData\\Roaming\\VSCodium\\User\\"),
    @("git", "\\git\\", "")
    # @("app_name", "carpeta_origen", "carpeta_destino")
)

foreach ($item in $folders) {
    $appName = $item[0]
    $pathFrom = Join-Path $pathScript $item[1]
    $pathTo = Join-Path "C:\Users\$user" $item[2]

    if (Test-Path $pathFrom) {

        if (-not (Test-Path $pathTo)) {
            New-Item -Path $pathTo -ItemType Directory -Force
            Write-Host "Created: $pathTo"
        }

        Copy-Item -Path "$($pathFrom)\*" -Destination $pathTo -Recurse -Force -Container
        Write-Host "Copied $appName"
    } else {
        Write-Host "Error on $appName"
    }
}

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