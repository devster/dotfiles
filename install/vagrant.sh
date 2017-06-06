#!/usr/bin/env bash

VAGRANT_VERSION=1.9.5
VAGRANT_DOTDEB="vagrant_${VAGRANT_VERSION}_x86_64.deb"

wget "https://releases.hashicorp.com/vagrant/${VAGRANT_VERSION}/${VAGRANT_DOTDEB}"

dpkg -i $VAGRANT_DOTDEB

rm -f $VAGRANT_DOTDEB
