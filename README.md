# .dotfiles

Mis archivos de configuración personal.

## Archivos

| Archivo | Descripción |
|---------|-------------|
| `.gitconfig` | Configuración de Git |
| `.config/VSCodium/User/settings.json` | Configuración de VSCodium |

## Requisitos

- [VSCodium](https://vscodium.com/)
- [Hack Nerd Font](https://www.nerdfonts.com/font-downloads)

## Instalación

### Linux

```bash
stow .
```

### Windows

Ver [windows.ps1](https://github.com/roberfu/runs/blob/main/windows.ps1#L58-L82) (líneas 58-82).

## SSH

```bash
ssh-keygen -t ed25519 -C "tu-email@email.com"
cat ~/.ssh/id_ed25519.pub
ssh -T git@github.com
```
