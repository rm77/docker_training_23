#!/bin/sh

NAMA=mylab3
SUBNET=192.168.20.0/24
GATEWAY=192.168.20.254
IPRANGE=192.168.20.0/24

docker network create \
  --driver=overlay \
  --attachable \
  --subnet=$SUBNET \
  --ip-range=$IPRANGE \
  --gateway=$GATEWAY \
  $NAMA

