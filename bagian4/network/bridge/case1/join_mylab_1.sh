docker run -itd --name instance1 --network mylab1 alpine:3.18  2> /dev/null                                                                                                        

docker run -itd --name instance2 --network mylab1 alpine:3.18  2> /dev/null


echo "check ip address on instance1"
docker exec -ti instance1 ip addr




echo "\n\ncheck ip address on instance2"
docker exec -ti instance2 ip addr
