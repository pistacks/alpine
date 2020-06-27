#!/bin/bash
# usage: bash build.sh

MAJOR_VERSION="${MAJOR_VERSION:-3.12}"
MINOR_VERSION="${MINOR_VERSION:-3.12.0}"
VERSION=${MINOR_VERSION}
URL="http://dl-cdn.alpinelinux.org/alpine/v$MAJOR_VERSION/releases/armv7/alpine-minirootfs-$MINOR_VERSION-armv7.tar.gz"
wget ${URL}
docker build --build-arg VERSION=${VERSION} .
