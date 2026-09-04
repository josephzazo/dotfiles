# Dotfiles
> hnau-made configuration files

My openSUSE Tumbleweed + Niri desktop configuration.

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

Run:

./scripts/setup-tumbleweed.sh

### Note

system/greetd/config.toml

is not automatically deployed by chezmoi; the setup script installs it.
