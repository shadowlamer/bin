#!/bin/bash

KERNEL=$(uname -r)
PRIVKEY=/var/lib/shim-signed/mok/MOK.priv
PUBKEY=/var/lib/shim-signed/mok/MOK.der

for MODULE in /lib/modules/${KERNEL}/updates/dkms/*.ko; do
    sudo /usr/src/linux-headers-${KERNEL}/scripts/sign-file sha256 ${PRIVKEY} ${PUBKEY} ${MODULE}
done