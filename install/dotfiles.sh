#!/usr/bin/env bash

cp -rT $ROOT/dotfiles $HOME

[ -d "$HOME/bin" ] || mkdir $HOME/bin

chown -R $USER:$USER $HOME

source $HOME/.zshrc
