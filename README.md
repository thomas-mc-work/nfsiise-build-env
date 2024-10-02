# Docker Based Build Environment For zaps166/NFSIISE

Cross-platform build environment for [zaps166/NFSIISE](https://github.com/zaps166/NFSIISE) based on Docker/Podman.

It allows you to build the game binary in an isolated environment. This **prevents your system being polluted with all the required development dependencies** (which are a lot).

## Preparation

First it's required to build the environment based on your desired Ubuntu version:

    export os_version=ubuntu-22.04
    docker build -f "Dockerfile-${os_version}" -t "tmcw/nfsiise:${os_version}" https://github.com/thomas-mc-work/nfsiise-build-env.git

The variable `os_version` can be one of:

- `ubuntu-14.04`
- `ubuntu-16.04`
- `ubuntu-18.04`
- `ubuntu-20.04`
- `ubuntu-22.04`
- `ubuntu-24.04`

## Compilation

The latest release of the repository is build on every execution.

    docker run --rm -e TZ="$(cat /etc/timezone)" "tmcw/nfsiise:${os_version}" > nfs2se

You can easily modify one of the existing Dockerfiles to adapt to any other Debian based OS or version.

The created binary `nfs2se` will be dropped into the current folder (`./nfs2se`).

## Final Note

Currently the game is being compiled using the `gl1` CLI switch. This is due to the fact that you can't use anti-aliasing when using `gl2`. See the regarding issue: https://github.com/zaps166/NFSIISE/issues/122
