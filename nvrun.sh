PRIVKEY=/var/lib/shim-signed/mok/MOK.priv
PUBKEY=/var/lib/shim-signed/mok/MOK.der
CMD=$1

sudo $CMD --module-signing-secret-key=$PRIVKEY --module-signing-public-key=$PUBKEY
