#!/usr/bin/env sh
set -o nounset   ## set -u : exit the script if you try to use an uninitialised variable
set -o errexit   ## set -e : exit the script if any statement returns a non-true return value

echo "parameter can be one of:
· ubuntu-14.04
· ubuntu-16.04
· ubuntu-18.04
· ubuntu-20.04
· ubuntu-22.04"

os_version=${1?"param 1: OS version"}

docker build -f "Dockerfile-${os_version}" -t "tmcw/nfsiise:${os_version}" .
docker run --rm -e TZ="$(cat /etc/timezone)" "tmcw/nfsiise:${os_version}" > nfs2se
