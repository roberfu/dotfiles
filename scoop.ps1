Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser

Invoke-RestMethod -Uri https://get.scoop.sh | Invoke-Expression

scopp install git
scoop bucket add main
scoop bucket add extras
scoop bucket add versions
scoop bucket add nerd-fonts
scoop bucket add java

$apps = @(
    #"main/7zip", installed with git 
    "extras/vcredist2022",
    "main/gcc",
    "main/neovim",
    "nerd-fonts/Lilex-NF",
    "extras/vscodium",
    "extras/googlechrome",
    "games/steam",
    "extras/qbittorrent",
    "main/nodejs-lts",
    "java/openjdk21",
    "extras/vlc",
    "main/python",
    "extras/notepadplusplus",
    "extras/dbeaver",
    "extras/sumatrapdf",
    "extras/spotify",
    "extras/anydesk",
    "extras/ventoy",
    "extras/alacritty",
    "extras/onlyoffice-desktopeditors",
    "extras/putty",
    "extras/filezilla")

foreach ($app in $apps) {
    Write-Output "scoop install $app"  | Invoke-Expression
}
