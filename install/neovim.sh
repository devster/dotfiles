#!/usr/bin/env bash

if [ ! hash nvim ]; then
    add-apt-repository ppa:neovim-ppa/unstable -y

    apt-get update

    apt-get install -y neovim
fi
