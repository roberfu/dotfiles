# Set-ExecutionPolicy Unrestricted
# Invoke-RestMethod -Uri https://get.scoop.sh | Invoke-Expression

scoop bucket add main
scoop bucket add nerd-fonts

$apps = @(
    "nerd-fonts/Hack-NF")

foreach ($app in $apps) {
    Write-Output "scoop install $app"  | Invoke-Expression
}
