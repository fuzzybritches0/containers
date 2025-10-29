#!/bin/bash

tar czf ../image.tar.gz * || exit ${?}
chown ${DBS_UID}:${DBS_GID} ../image.tar.gz
exit 0

