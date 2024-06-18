Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
Invoke-RestMethod -Uri https://get.scoop.sh | Invoke-Expression

scoop bucket add main
scoop bucket add nerd-fonts
scoop bucket add java

$apps = @(
    "nerd-fonts/Hack-NF-Mono",
    "main/maven",
    "java/openjdk",
    "main/nodejs-lts",
    "main/python")

foreach ($app in $apps) {
    Write-Output "scoop install $app"  | Invoke-Expression
}
