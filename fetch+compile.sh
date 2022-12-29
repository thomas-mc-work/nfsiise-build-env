#!/usr/bin/env sh
set -o nounset   ## set -u : exit the script if you try to use an uninitialised variable
set -o errexit   ## set -e : exit the script if any statement returns a non-true return value

git clone --quiet https://github.com/zaps166/NFSIISE.git >/dev/null 2>&1
cd NFSIISE
git submodule --quiet init >/dev/null 2>&1
git submodule --quiet update >/dev/null 2>&1
./compile_nfs gl1 >/dev/null 2>&1
cat "/NFSIISE/Need For Speed II SE/nfs2se"
