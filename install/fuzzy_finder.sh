#!/usr/bin/env bash

rm -rf "$HOME/.fzf"
git clone --depth 1 https://github.com/junegunn/fzf.git $HOME/.fzf

$HOME/.fzf/install --all --no-update-rc
