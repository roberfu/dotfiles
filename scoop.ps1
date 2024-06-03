Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
Invoke-RestMethod -Uri https://get.scoop.sh | Invoke-Expression

scoop bucket add nerd-fonts

$apps = @(
    "nerd-fonts/JetBrainsMono-NF")

foreach ($app in $apps) {
    Write-Output "scoop install $app"  | Invoke-Expression
}