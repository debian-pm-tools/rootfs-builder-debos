#!/bin/sh -x

if command -v systemctl >/dev/null; then
    systemctl set-default graphical.target
else
    echo "To be implemented"
fi
