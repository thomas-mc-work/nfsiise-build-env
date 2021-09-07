# Docker Based Build Environment For zaps166/NFSIISE

Cross-platform build environment for [zaps166/NFSIISE](https://github.com/zaps166/NFSIISE) based on Docker/Podman.

It allows you to build the game binary in an isolated environment. This **prevents your system being polluted with all the required development dependencies** (which are a lot).

## Setup

    curl -L https://github.com/thomas-mc-work/nfsiise-build-env/archive/master.tar.gz | tar xz

## Usage

The latest release of the repository is build on every execution:

    cd nfsiise-build-env-master
    ./build-it.sh <os-version>

`os-version` can be one of:

- `ubuntu-14.04`
- `ubuntu-16.04`
- `ubuntu-18.04`
- `ubuntu-20.04`

You can easily modify one of the existing Dockerfiles to adapt any other Debian based OS or version.

The created binary `nfs2se` will be dropped into the current folder (`./nfs2se`).

## Final Note

Currently the game is being compiled using the `gl1` CLI switch. This is due to a visual regression, which I've encountered lately (2021-03). [This issue is being reported here](https://github.com/zaps166/NFSIISE/issues/68).