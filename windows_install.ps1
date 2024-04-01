$user = $env:USERNAME
$pathScript = $PSScriptRoot

$folders = @(
    @("\\git\\", ""),
    @("\\nvim\\.config\\nvim\\", "\\AppData\\Local\\nvim\\"),
    @("\\alacritty\\", "\\AppData\\Roaming\\alacritty\\"),
    @("\\codium\\.config\\VSCodium\\User\\", "\\AppData\\Roaming\\VSCodium\\User\\"),
    @("\\lapce\\.config\\lapce-stable\\", "\\AppData\\Roaming\\lapce\\Lapce-Nightly\\config\\")
    # @("carpeta_origen", "carpeta_destino")
)

foreach ($pair in $folders) {
    $pathFrom = Join-Path $pathScript $pair[0]
    $pathTo = Join-Path "C:\Users\$user" $pair[1]

    if (Test-Path $pathFrom) {

        if (-not (Test-Path $pathTo)) {
            New-Item -Path $pathTo -ItemType Directory -Force
            Write-Host "Carpeta de destino creada: $pathTo"
        }

        Copy-Item -Path "$($pathFrom)\*" -Destination $pathTo -Recurse -Force -Container
        Write-Host "Copiado el contenido de carepta $($pair[0]) "
    } else {
        Write-Host "Error el copiar el contenido de carpeta $($pair[0])"
    }
}
