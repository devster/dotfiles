#!/usr/bin/env bash

curl https://s3-us-west-2.amazonaws.com/brave-apt/keys.asc | apt-key add -
echo "deb [arch=amd64] https://s3-us-west-2.amazonaws.com/brave-apt $UBUNTU_RELEASE_NAME main" | tee -a /etc/apt/sources.list.d/brave.list

apt-get update
apt-get install -y brave
