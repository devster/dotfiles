#!/usr/bin/env bash

GO_VERSION=1.8.3
GO_OS=linux
GO_ARCH=amd64
GO_TAR="go$GO_VERSION.$GO_OS-$GO_ARCH.tar.gz"

debug "Download golang tarball"
wget https://storage.googleapis.com/golang/$GO_TAR

debug "Remove old install"
rm -rf /usr/local/go

debug "Untar golang tarball"
tar -C /usr/local -xzf $GO_TAR

debug "Create golang workspace"
[ ! -d "$HOME/go/src" ] && mkdir -p $HOME/go/src && chown -R $USER:$USER $HOME/go

debug "Remove tarball"
rm -f $GO_TAR

export GOPATH=$HOME/go
export PATH=$PATH:/usr/local/go/bin

hash -r
