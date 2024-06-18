$user = $env:USERNAME
$pathScript = $PSScriptRoot

$folders = @(
    @("codium", "\\codium\\.config\\VSCodium\\User\\", "\\AppData\\Roaming\\VSCodium\\User\\"),
    @("git", "\\git\\", "")
    # @("app_name", "carpeta_origen", "carpeta_destino")
)

# Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser

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