Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser

Invoke-RestMethod -Uri https://get.scoop.sh | Invoke-Expression

scoop bucket add main

scoop bucket add extras

scoop bucket add versions

scoop bucket add nerd-fonts

$apps = @(
    "main/7zip",
    "extras/vcredist2022",
    "main/gcc",
    "scoop install main/neovim",
    "scoop install nerd-fonts/CascadiaMono-NF",
    "scoop install nerd-fonts/Hack-NF",
    "scoop install extras/vscodium")

foreach ($app in $apps) {
    Write-Output "scoop install $app"  | Invoke-Expression
}
