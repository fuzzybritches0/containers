#!/bin/bash

ADDRESS="http://deb.debian.org"
SUITE="trixie"

[ -f "../config" ] && . ../config
ADDR="${ADDRESS}"
[ "${PROXY}" ] && ADDR="http://${PROXY}:${PPORT}/${ADDRESS/http:\/\/}"

/usr/sbin/debootstrap --variant=minbase --arch=amd64 \
	${SUITE} . ${ADDR} || exit ${?}

