#!/bin/bash

sudo apt update -y

sudo apt install -y openjdk-21-jdk

sudo apt install -y python3-full python3-pip python3-venv

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

nvm install --lts

sudo apt install -y ripgrep
