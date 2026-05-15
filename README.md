# dotfiles

Archivos de configuración personal para mi entorno de trabajo.

## Descripción

Configuraciones para terminal, editor de texto y herramientas de desarrollo.

## Requisitos

- [Alacritty](https://alacritty.org/) - Emulador de terminal
- [Ghostty](https://ghostty.org/) - Emulador de terminal
- [Neovim](https://neovim.io/) - Editor de texto
- [Zed](https://zed.dev/) - Editor de código
- [VSCodium](https://vscodium.com/) - Editor de código
- [Oh My Posh](https://ohmyposh.dev/) - Prompt para terminal
- [Hack Nerd Font](https://www.nerdfonts.com/font-downloads) - Tipografía

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

Ejecutar el script [windows.ps1](https://github.com/roberfu/runs/blob/main/windows.ps1) que crea los symlinks automáticamente.

## TODO

- [ ] Configurar keybindings personalizados en Neovim
- [ ] Agregar más plugins de LSP para lenguajes adicionales
- [ ] Agregar configuración de tmux
- [ ] Agregar configuración de bash
- [ ] Agregar configuración de zed
