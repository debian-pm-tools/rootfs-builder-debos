#!/bin/sh

echo "I: making libhybris the default alternatives for arm-linux-gnueabihf_egl_conf"
update-alternatives --set arm-linux-gnueabihf_egl_conf /usr/lib/arm-linux-gnueabihf/libhybris-egl/ld.so.conf
update-alternatives --set aarch64-linux-gnu_egl_conf /usr/lib/aarch64-linux-gnu/libhybris-egl/ld.so.conf
update-alternatives --set i386-linux-gnu_egl_conf /usr/lib/i386-linux-gnu/libhybris-egl/ld.so.conf
update-alternatives --set x86_64-linux-gnu_egl_conf /usr/lib/x86-linux-gnu/libhybris-egl/ld.so.conf

# ldconfig needs to be run immediately as we're changing /etc/ld.so.conf.d/ with alternatives.
LDCONFIG_NOTRIGGER=y ldconfig
