#!/bin/bash

ADDRESS="http://deb.debian.org/debian/"
SECADDRESS="http://security.debian.org/debian-security/"
SUITE="bookworm"
COMPONENTS="main"

[ -f "../config" ] && . ../config

mkdir -p ./etc/apt
echo "deb ${ADDRESS} ${SUITE} ${COMPONENTS}" > ./etc/apt/sources.list
echo "deb ${ADDRESS} ${SUITE}-updates ${COMPONENTS}" >> ./etc/apt/sources.list
echo "deb ${SECADDRESS} ${SUITE}-security ${COMPONENTS}" >> ./etc/apt/sources.list

if [ "${PROXY}" ]; then
	echo "Acquire::http::Proxy \"http://${PROXY}:${PPORT}\";" > ./etc/apt/apt.conf.d/00aptproxy
fi

exit 0
