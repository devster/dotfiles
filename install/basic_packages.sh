#!/usr/bin/env bash

apt-get install -y \
    git \
    software-properties-common \
    python-software-properties \
    apt-transport-https \
    ca-certificates \
    wget \
    curl \
    byobu \
    httpie \
    xclip \
    htop \
    tree \
    baobab \
    pwgen \
    shellcheck \
    unattended-upgrades

cat > /etc/apt/apt.conf.d/20auto-upgrades <<EOL
APT::Periodic::Update-Package-Lists "1";
APT::Periodic::Unattended-Upgrade "1";
EOL
