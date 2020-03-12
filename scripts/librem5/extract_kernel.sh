#!/bin/sh -x

cd /boot

vmlinuz=$(ls vmlinuz-*)

mv ${vmlinuz} /boot/Image.gz
zcat /boot/Image.gz > ${vmlinuz}
rm /boot/Image.gz
