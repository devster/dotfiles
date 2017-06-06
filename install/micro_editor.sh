#!/usr/bin/env bash

debug "go get"
/usr/local/go/bin/go get -d github.com/zyedidia/micro/cmd/micro
cd $GOPATH/src/github.com/zyedidia/micro
debug "make build"
make build

debug "chmod and mv"
chmod +x micro

mv micro /usr/local/bin
