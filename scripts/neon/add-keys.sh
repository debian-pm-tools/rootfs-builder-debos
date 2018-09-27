#!/usr/bin/env bash

wget -qO - http://neon.plasma-mobile.org:8080/Pangea%20CI.gpg.key | apt-key add -
wget -qO - https://archive.neon.kde.org/public.key | apt-key add -
