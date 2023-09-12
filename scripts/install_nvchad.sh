#!/usr/bin/env bash
set -euxo pipefail

# remove any existing installation and configuration
rm -rf $HOME/.config/nvim/
rm -rf $HOME/.local/share/nvim/
rm -rf $HOME/.local/state/nvim/

# clone the latest release of nvchad
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1

# Stow our own configurations to nvchad
script_dir=$(dirname "$0")
cd "${script_dir}/../dotfiles"
./restow nvim

# Installation hooks will run here.
nvim
