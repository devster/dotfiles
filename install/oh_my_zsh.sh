#!/usr/bin/env bash

apt-get install -y zsh

chsh -s /bin/zsh $USER

cd $HOME

# sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
if [ ! -d ".oh-my-zsh" ]; then
    git clone git://github.com/robbyrussell/oh-my-zsh.git .oh-my-zsh
fi

chown -R $USER:$USER .oh-my-zsh

rm -rf .bash* .zshrc.pre-oh-my-zsh
