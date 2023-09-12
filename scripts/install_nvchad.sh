#!/usr/bin/env bash

rm -rf $HOME/.config/nvim/
rm -rf $HOME/.local/share/nvim/
rm -rf $HOME/.local/state/nvim/
script_dir="$(dirname $0)"
cd $script_dir/../dotfiles
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1
./restow nvim
nvim &
