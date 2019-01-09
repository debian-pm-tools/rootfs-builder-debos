#!/bin/bash

echo "I: adding plasma-phone related env vars"

echo QT_QPA_PLATFORM=wayland >> /etc/environment
echo FORCE_RIL_NUM_MODEMS=1 >> /etc/environment
echo GTK_IM_MODULE=maliit >> /etc/environment
echo PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games >> /etc/environment

echo GDK_BACKEND=x11 >> /etc/environment
echo QT_GSTREAMER_CAMERABIN_SRC=droidcamsrc >> /etc/environment

echo QT_SELECT=qt5 >> /etc/environment
echo QT_VIRTUALKEYBOARD_STYLE=Plasma >> /etc/environment
