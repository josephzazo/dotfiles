#!/usr/bin/env bash

# e: to catch failure, u: undefined variable as an error, o: failure anywhere in pipeline makes the pipeline fail
set -euo pipefail

SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
REPO_DIR="$(dirname "$SCRIPT_DIR")"

echo "Setting up openSUSE Tumbleweed..."
echo "Repository: $REPO_DIR"

# Install greetd configuration
sudo install -Dm644 \
    "$REPO_DIR/system/greetd/config.toml" \
    /etc/greetd/config.toml

# Install wallpapers
mkdir -p "$HOME/Pictures/Wallpapers"

cp -a \
    "$REPO_DIR/assets/wallpapers/." \
    "$HOME/Pictures/Wallpapers/"

# Enable services
sudo systemctl enable greetd

echo "Tumbleweed system setup complete."
