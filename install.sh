#!/usr/bin/env bash

set -e

ROOT=$(realpath $(dirname $0))
USER=$(who am i | awk '{print $1}')
UBUNTU_RELEASE_NAME=$(cat /etc/os-release| sed -En 's/UBUNTU_CODENAME=(.+)$/\1/p')

source $ROOT/common.sh

debug "$USER $HOME $UBUNTU_RELEASE_NAME"

# Check if the user is root
if [ "$UID" != "0" ]; then
    error "This script must be run with root privileges"
fi

apt-get update

info "Installing some basic packages"
source $ROOT/install/basic_packages.sh

info "Configuring DNS"
source $ROOT/install/dns.sh

info "Installing Go"
source $ROOT/install/golang.sh

# info "Installing neovim"
# source $ROOT/install/neovim.sh

info "Installing Oh my zsh"
source $ROOT/install/oh_my_zsh.sh

set +e
info "Installing dotfiles in $HOME"
source $ROOT/install/dotfiles.sh
set -e

info "Installing sublime text"
source $ROOT/install/sublimetext.sh

info "Installing Spotify"
source $ROOT/install/spotify.sh

info "Installing Fuzzy finder"
source $ROOT/install/fuzzy_finder.sh

info "Installing micro editor"
source $ROOT/install/micro_editor.sh

# info "Installing VLC"
# source $ROOT/install/vlc.sh

info "Installing Franz"
source $ROOT/install/meetfranz.sh

info "Installing Chrome & Chromium"
source $ROOT/install/chrome.sh

info "Installing vagrant"
source $ROOT/install/vagrant.sh

info "Installing docker"
source $ROOT/install/docker.sh

info "Installing ansible"
source $ROOT/install/ansible.sh

info "Installing Brave browser"
source $ROOT/install/brave.sh

info "Upgrade"
apt-get upgrade -y
