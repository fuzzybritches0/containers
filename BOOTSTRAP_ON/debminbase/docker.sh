#!/bin/bash

SUITE="bookworm"
[ -f "./config" ] && . ./config
TAG="$(date +%y%m%d%H%M)"

docker import image.tar.gz ${SUITE}:${TAG}
docker tag ${SUITE}:${TAG} ${SUITE}:latest

