#!/bin/bash

DEBIAN_FRONTEND=noninteractive apt-get install -q -y --no-install-recommends \
	adduser ca-certificates psmisc man-db less procps curl locales \
	kmod cpio wget bc neovim google-perftools bash-completion \
	ncurses-term
