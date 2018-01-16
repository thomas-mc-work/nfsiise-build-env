#!/usr/bin/env sh
set -o nounset   ## set -u : exit the script if you try to use an uninitialised variable
set -o errexit   ## set -e : exit the script if any statement returns a non-true return value

git clone https://github.com/zaps166/NFSIISE.git
cd NFSIISE
git submodule init
git submodule update
./compile_nfs gl2
cp "/NFSIISE/Need For Speed II SE/nfs2se" /output