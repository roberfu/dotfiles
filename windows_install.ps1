$user = $env:USERNAME

$pathScript = $PSScriptRoot

$pathFrom = Join-Path $pathScript "git\.gitconfig"

$pathTo = "C:\Users\$user\.gitconfig"

if (Test-Path $pathFrom) {
    Copy-Item -Path $pathFrom -Destination $pathTo -Force
    Write-Host "Done."
} else {
    Write-Host "Error."
}