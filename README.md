# Dotfiles
*Hnau-made configuration files.*

My openSUSE Tumbleweed + Niri desktop configuration, managed primarily with chezmoi.

# What's included

## Managed with chezmoi

- Niri
- Kitty

## System configuration

- greetd
- Noctalia Greeter

## Local / unmanaged configuration

Noctalia configuration is intentionally not synchronized. Each machine
uses its own Noctalia defaults/settings.

## Bootstrap
On a fresh openSUSE Tumbleweed installation, run:

`./scripts/setup-tumbleweed.sh`

> ### Note
> `system/greetd/config.toml` is not automatically deployed by chezmoi.
> 
> The bootstrap script installs it.
