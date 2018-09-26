#!/usr/bin/env bash

echo $DEPLOY_KEY_PRIVATE | base64 -d | xz -d > ~/.ssh/id_rsa
echo $DEPLOY_KEY_PUBLIC | base64 -d | xz -d > ~/.ssh/id_rsa.pub
chmod 400 ~/.ssh/id_rsa

rsync -avzp -e \
        "ssh -o StrictHostKeyChecking=no -p $DEPLOY_PORT" \
        $TRAVIS_BUILD_DIR/debian-*.tar.xz \
        $DEPLOY_ACCOUNT:/home/travis/ &
pid=$!

# If this script is killed, kill the "rsync".
trap "kill $pid 2> /dev/null" EXIT

# While rsync is running...
while kill -0 $pid 2> /dev/null; do
	echo -n "."
	sleep 1
done

# Disable the trap on a normal exit.
trap - EXIT
