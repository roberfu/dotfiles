# Set-ExecutionPolicy Unrestricted
# Invoke-RestMethod -Uri https://get.scoop.sh | Invoke-Expression

scoop bucket add main
scoop bucket add nerd-fonts

$apps = @(
    "nerd-fonts/Meslo-NF",
    "main/maven",
    "main/gcc",
    "main/neovim")

foreach ($app in $apps) {
    Write-Output "scoop install $app"  | Invoke-Expression
}