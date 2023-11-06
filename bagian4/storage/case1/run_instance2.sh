#!/bin/sh

echo run instance2

docker rm -f instance2

docker run -dit \
	--name instance2 \
	-v volume1:/mydata \
	alpine:3.18

echo cek number.txt in /mydata , show top 5 number

docker exec -ti instance2 /bin/sh -c 'cd /mydata; ls -la; cat number.txt | head -5'
