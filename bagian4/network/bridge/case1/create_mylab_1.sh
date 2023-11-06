#!/bin/sh

NAMA=mylab1
SUBNET=192.168.18.0/24
GATEWAY=192.168.18.254
IPRANGE=192.168.18.0/24

docker network create \
  --driver=bridge \
  --subnet=$SUBNET \
  --ip-range=$IPRANGE \
  --gateway=$GATEWAY \
  --opt com.docker.network.bridge.enable_icc=true \
  --opt com.docker.network.bridge.enable_ip_masquerade=true \
  $NAMA
