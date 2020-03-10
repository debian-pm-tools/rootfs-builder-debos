#!/usr/bin/env bash
set -e

echo "fixing library paths"
rm /usr/lib/i386-linux-gnu/libGLESv2.so.2.1.0
rm /usr/lib/i386-linux-gnu/libGLESv1_CM.so.1.2.0
rm /usr/lib/i386-linux-gnu/libEGL.so.1.1.0

ln /usr/lib/i386-linux-gnu/libhybris-egl/libGLESv2.so.2.0.0  /usr/lib/i386-linux-gnu/libGLESv2.so.2.1.0
ln /usr/lib/i386-linux-gnu/libhybris-egl/libGLESv1_CM.so.1.0.1  /usr/lib/i386-linux-gnu/libGLESv1_CM.so.1.2.0
ln /usr/lib/i386-linux-gnu/libhybris-egl/libEGL.so.1.0.0  /usr/lib/i386-linux-gnu/libEGL.so.1.1.0


echo "Linking eglplatform_hwcomposer to eglplatform_DRM"
ln -s /usr/lib/i386-linux-gnu/libhybris/eglplatform_hwcomposer.so /usr/lib/i386-linux-gnu/libhybris/eglplatform_DRM.so


echo "enabling btkbd.service"
systemctl enable btkbd.service


### no kernel message spamming of console
echo "disabling kernel messages"
echo "kernel.printk = 3 4 1 3" >> etc/sysctl.conf


echo "fixing bluetooth.service"
sed -i -e 's/CapabilityBoundingSet=CAP_NET_ADMIN CAP_NET_BIND_SERVICE/#CapabilityBoundingSet=CAP_NET_ADMIN CAP_NET_BIND_SERVICE/g' usr/lib/systemd/system/bluetooth.service


### Create directories
mkdir -p /var/lib/bluetooth
mkdir -p /persistent
mkdir -p /data
mkdir -p /system

### Disable lxc-android, we only need the powervr driver which doesn't require a running android system
systemctl disable lxc@android.service
