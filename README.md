# Primecoin for Debian 7 ("Wheezy") amd64-gnome 

Primecoin? https://en.wikipedia.org/wiki/Primecoin

Debian? https://en.wikipedia.org/wiki/Debian

7 ("Wheezy")? https://wiki.debian.org/DebianWheezy

amd64? https://en.wikipedia.org/wiki/X86-64

gnome? https://en.wikipedia.org/wiki/GNOME

## :open_file_folder: Git

- Branch: release-v1
- Tag: v1.0.2

## :construction_worker: Travis CI

[![Build Status](https://travis-ci.org/belovachap/primecoin-debian.svg?branch=release-v1)](https://travis-ci.org/belovachap/primecoin-debian)

## :package: Dependencies

| Package                                                                     |
| --------------------------------------------------------------------------- |
| [build-essential](https://packages.debian.org/wheezy/build-essential)       |
| [libboost-all-dev](https://packages.debian.org/wheezy/libboost-all-dev)     |
| [libdb++-dev](https://packages.debian.org/wheezy/libdb++-dev)               |
| [libjson-spirit-dev](https://packages.debian.org/wheezy/libjson-spirit-dev) |
| [qt4-dev-tools](https://packages.debian.org/wheezy/qt4-dev-tools)           |

## :iphone: Wallet

```
apt-get install <dependencies>
qmake-qt4
make
```

## :computer: Server

```
apt-get install <dependencies>
cd src
make
```

The default `Dockerfile` will build an image for running a server.

```
docker build -t primecoin-server .
docker run -d -p 9911:9911 -v /home/user/.primecoin:/data --restart always primecoin-server
```

## :wrench: Development

See `Dockerfile.dev` and `.travis.yml` :)
