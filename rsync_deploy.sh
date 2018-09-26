#!/usr/bin/env bash

echo $DEPLOY_KEY_PRIVATE | base64 -d | xz -d > ~/.ssh/id_rsa
echo $DEPLOY_KEY_PUBLIC | base64 -d | xz -d > ~/.ssh/id_rsa.pub
chmod 400 ~/.ssh/id_rsa

rsync -avzp -e "ssh -o StrictHostKeyChecking=no -p $DEPLOY_PORT" $TRAVIS_BUILD_DIR/debian-*.tar.xz $DEPLOY_ACCOUNT:/home/travis/
