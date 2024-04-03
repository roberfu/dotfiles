Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser

Invoke-RestMethod -Uri https://get.scoop.sh | Invoke-Expression

scoop bucket add main

scoop bucket add extras

scoop bucket add main

$apps = @(
    "main/7zip",
    "extras/vcredist2022",
    "main/gcc",
    "versions/neovim-nightly")

foreach ($app in $apps) {
    Write-Output "scoop install $app"  | Invoke-Expression
}

scoop install 