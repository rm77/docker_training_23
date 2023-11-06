#!/bin/sh

docker swarm init  | tee | grep "docker swarm join --token" > setup_host_2.sh && cp setup_host_2.sh setup_host_3.sh


#to remove from cluster, use docker swarm leave --force

manager_token=$(docker swarm join-token  manager --quiet)
worker_token=$(docker swarm join-token worker --quiet)



echo MANAGER_TOKEN = $manager_token
echo WORKER_TOKEN = $worker_token


docker node ls
