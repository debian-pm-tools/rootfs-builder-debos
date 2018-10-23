#!/usr/bin/env bash

cat <<EOF > /etc/apt/preferences
Package: *
Pin: origin repo.kaidan.im
Pin-Priority: 2000
EOF
