#!/bin/sh

apk update && apk add openssh openssh-keygen

ssh-keygen -A

adduser user1 -D ; echo 'user1:user1qwerty' | chpasswd ; mkdir -p /home/user1/.ssh/ ; cat /config/id_rsa.pub >>  /home/user1/.ssh/authorized_keys

/usr/sbin/sshd -D -f /config/sshdconfig
