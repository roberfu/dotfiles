# .dotfiles

Mis archivos de configuración personal.

## Requisitos

- [Alacritty](https://alacritty.org/) - Emulador de terminal
- [Neovim](https://neovim.io/) - Editor de texto
- [VSCodium](https://vscodium.com/) - Editor de código
- [Hack Nerd Font](https://www.nerdfonts.com/font-downloads) - Tipografía

### Linux

- [GNU Stow](https://www.gnu.org/software/stow/) - Gestor de symlinks

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

Ver [windows.ps1](https://github.com/roberfu/runs/blob/main/windows.ps1#L58-L82) (líneas 58-82).

## Estructura

```
.dotfiles
├── .alacritty.toml          # Configuración de Alacritty
├── .gitconfig               # Configuración de Git
└── .config/
    ├── nvim/                # Configuración de Neovim (LazyVim)
    │   ├── init.lua
    │   ├── ftplugin/
    │   └── lua/
    │       ├── config/     # Configuración base
    │       └── plugins/    # Plugins (LSP, treesitter, etc.)
    ├── VSCodium/
    │   └── User/
    │       └── settings.json  # Configuración de VSCodium
    └── opencode/            # Configuración de opencode
```
