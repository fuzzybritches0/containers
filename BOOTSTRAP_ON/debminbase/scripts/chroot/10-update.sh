#!/bin/bash

apt-get update
DEBIAN_FRONTEND=noninteractive apt-get dist-upgrade -q -y
DEBIAN_FRONTEND=noninteractive apt-get autopurge -q -y
