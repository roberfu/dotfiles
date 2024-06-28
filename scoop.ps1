# Set-ExecutionPolicy Unrestricted
# Invoke-RestMethod -Uri https://get.scoop.sh | Invoke-Expression

scoop install git
scoop bucket add main
scoop bucket add nerd-fonts
scoop bucket add java
scoop bucket add games

$apps = @(
    "nerd-fonts/Hack-NF-Mono",
    "main/maven",
    "java/openjdk",
    "main/nodejs-lts",
    "main/python",
    "games/snes9x")

foreach ($app in $apps) {
    Write-Output "scoop install $app"  | Invoke-Expression
}