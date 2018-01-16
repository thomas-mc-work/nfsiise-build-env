# Docker Based Build Environment For zaps166/NFSIISE

Cross-platform build environment for [zaps166/NFSIISE
](https://github.com/zaps166/NFSIISE) based on Docker.

## Why I Need It?

This enables you to build the game binary **without pollluting your system with all the required development dependencies** (which are a lot).

## Setup

    curl -Lo nfsiise-build-env.tar.gz https://github.com/thomas-mc-work/nfsiise-build-env/archive/master.tar.gz
    tar xf nfsiise-build-env.tar.gz
    chmod +x nfsiise-build-env-master/build-it.sh

## Usage

The latest release of the repository is build on every execution:

    cd nfsiise-build-env-master
    ./build-it.sh <os-version>

The create binary `nfs2se` will be dropped into an automatically created folder `nfsiise-build-env-master/output`.
 
`os-version` can be one of:

- `ubuntu-14.04`
- `ubuntu-16.04`
- `ubuntu-18.04`

Or you can easily extend one of the existing Dockerfiles to adapt another OS version.

The create binary can be found in the folder `./NFSIISE-build-env-master/output`.