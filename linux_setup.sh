#!/bin/bash

if ! command -v stow &> /dev/null; then

    if command -v apt-get &> /dev/null; then
        sudo apt-get update
        sudo apt-get install -y stow
    elif command -v dnf &> /dev/null; then
        sudo dnf install -y stow
    elif command -v pacman &> /dev/null; then
        sudo pacman -S --noconfirm stow
    else
        echo "Stow error"
        exit 1
    fi
fi

DOT_FOLDERS="alacritty, git, lapce, nvim"

for folder in $(echo $DOT_FOLDERS | sed "s/,/ /g"); do
    echo "[+] Folder :: $folder"
    stow --ignore=README.md --ignore=LICENSE \
         -t $HOME -D $folder
    stow -v -t $HOME $folder
done

exec $SHELL -l
