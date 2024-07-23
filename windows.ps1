# Set-ExecutionPolicy Unrestricted

$user = $env:USERNAME
$pathScript = $PSScriptRoot

$folders = @(
    @("codium", "\\codium\\.config\\VSCodium\\User\\", "\\AppData\\Roaming\\VSCodium\\User\\"),
    @("git", "\\git\\", ""),
    @("neovim", "\\nvim\\.config\\", "\AppData\\Local\\"),
    @("wezterm", "\\wezterm\\.config\\", "" )
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
