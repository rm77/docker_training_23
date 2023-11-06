echo remove instance2
docker rm -f instance2

echo create instance2
docker run -itd --name instance2 -p 9999:80 --network mylab1 kennethreitz/httpbin                                                                                                          
echo connect instance2 to mylab2
docker network connect mylab2 instance2

