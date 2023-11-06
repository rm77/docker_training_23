#!/bin/sh

apk update && apk add sshfs

mkdir -p /shareddata

sshfs -f user1@c1:/shareddata \
	-o port=9022 \
	-o StrictHostKeyChecking=no \
	-o IdentityFile=/config/id_rsa \
	/shareddata
