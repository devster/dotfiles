#!/usr/bin/env bash

debug  "Chromium"
apt-get install -y chromium-browser

debug "Chrome"
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb

set +e

dpkg -i google-chrome-stable_current_amd64.deb

if [ $? -ne 0 ]; then
    apt-get install -f -y
    dpkg -i google-chrome-stable_current_amd64.deb
fi

set -e

rm -f google-chrome-stable_current_amd64.deb
