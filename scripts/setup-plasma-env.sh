#!/bin/bash

echo "I: adding plasma-phone related env vars"

cat <<EOF >>/etc/environment
QT_QPA_PLATFORM=wayland
FORCE_RIL_NUM_MODEMS=1
GTK_IM_MODULE=maliit
PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games

GDK_BACKEND=x11
QT_GSTREAMER_CAMERABIN_SRC=droidcamsrc

QT_SELECT=qt5
QT_VIRTUALKEYBOARD_STYLE=Plasma

KDE_DEBUG=0
EOF
