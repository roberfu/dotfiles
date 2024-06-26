Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
Invoke-RestMethod -Uri https://get.scoop.sh | Invoke-Expression

scoop bucket add main
scoop bucket add nerd-fonts
scoop bucket add java
scoop bucket add games

$apps = @(
    "nerd-fonts/Delugia-Nerd-Font-Complete"
    "main/maven",
    "java/openjdk",
    "main/nodejs-lts",
    "main/python",
    "games/snes9x")

foreach ($app in $apps) {
    Write-Output "scoop install $app"  | Invoke-Expression
}
