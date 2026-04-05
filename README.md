# dotfiles

Archivos de configuración personal para mi entorno de trabajo.

## Descripción

Configuraciones para terminal, editor de texto y herramientas de desarrollo.

## Requisitos

- [Alacritty](https://alacritty.org/) - Emulador de terminal
- [Neovim](https://neovim.io/) - Editor de texto
- [VSCodium](https://vscodium.com/) - Editor de código
- [Hack Nerd Font](https://www.nerdfonts.com/font-downloads) - Tipografía
- [GNU Stow](https://www.gnu.org/software/stow/) - Gestor de symlinks (Linux)

## Configuración SSH

Antes de clonar el repositorio, configura tu clave SSH:

```bash
ssh-keygen -t ed25519 -C "tu-email@email.com"
cat ~/.ssh/id_ed25519.pub
ssh -T git@github.com
```

Agrega la clave pública en GitHub: https://github.com/settings/keys

## Instalación

### Linux

```bash
git clone git@github.com:roberfu/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
stow .
```

### Windows

Ver [windows.ps1](https://github.com/roberfu/runs/blob/main/windows.ps1#L126-L155) en el repositorio runs.

## Tech Stack

- [Alacritty](https://alacritty.org/) - Terminal
- [Neovim](https://neovim.io/) - Editor (configurado con LazyVim)
- [VSCodium](https://vscodium.com/) - Editor de código
- [GNU Stow](https://www.gnu.org/software/stow/) - Gestor de symlinks