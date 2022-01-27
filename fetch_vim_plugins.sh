#!/usr/bin/env bash
mkdir -p ~/.vim/pack/plugins/start
cd "$_"
git clone https://tpope.io/vim/sensible.git
git clone https://tpope.io/vim/fugitive.git
vim -u NONE -c "helptags fugitive/doc" -c q
git clone https://tpope.io/vim/surround.git
vim -u NONE -c "helptags surround/doc" -c q
git clone https://tpope.io/vim/commentary.git
vim -u NONE -c "helptags commentary/doc" -c q
git clone https://tpope.io/vim/repeat.git
git clone https://tpope.io/vim/vinegar.git
git clone https://tpope.io/vim/flagship.git
vim -u NONE -c "helptags vim-flagship/doc" -c q
git clone https://github.com/morhetz/gruvbox.git
git clone https://github.com/itchyny/lightline.vim
git clone https://github.com/shinchu/lightline-gruvbox.vim
