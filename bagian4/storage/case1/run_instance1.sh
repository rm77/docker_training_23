#!/bin/sh

echo run instance1

docker rm -f instance1

docker run -dit \
	--name instance1 \
	-v volume1:/mydata \
	alpine:3.18

echo write file number.txt in /mydata

docker exec -ti instance1 \
	/bin/sh -c 'x=1;while [ $x -lt 1000 ];do echo $x >> /mydata/number.txt ; x=$(($x+1));done'
