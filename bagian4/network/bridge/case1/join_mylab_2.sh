docker run -itd --name instance3 --network mylab2 alpine:3.18  2> /dev/null                                                                                                        
docker run -itd --name instance4 --network mylab2 alpine:3.18  2> /dev/null                                                                                                        
docker run -itd --name instance5 --network mylab2 alpine:3.18  2> /dev/null                                                                                                        

echo "check ip address on instance3"
docker exec -ti instance3 ip addr
echo "check ip address on instance4"
docker exec -ti instance4 ip addr
echo "check ip address on instance5"
docker exec -ti instance5 ip addr




