echo create instance1 
docker run -itd --name instance1 --network mylab1 alpine:3.18  

echo create instance2
docker run -itd --name instance2  --network mylab1 kennethreitz/httpbin                                                                                                          
echo connect instance2 to mylab2
docker network connect mylab2 instance2

