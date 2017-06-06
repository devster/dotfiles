#!/usr/bin/env bash

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -

apt-key fingerprint 0EBFCD88

add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $UBUNTU_RELEASE_NAME stable"

apt-get update

apt-get install -y docker-ce
