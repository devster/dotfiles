#!/usr/bin/env bash

apt-get install -y resolvconf

cat > /etc/resolvconf/resolv.conf.d/tail <<EOL
nameserver 93.170.96.235
nameserver 5.135.183.146
EOL

resolvconf -u
