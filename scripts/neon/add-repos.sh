#!/usr/bin/env bash

cat <<EOF >> /etc/apt/sources.list
deb http://repo.halium.org bionic main
deb http://repo.halium.org/generic bionic main

deb http://mobile.neon.pangea.pub bionic main
deb http://mobile.neon.pangea.pub/generic bionic main

deb http://archive.neon.kde.org/dev/unstable bionic main
EOF
