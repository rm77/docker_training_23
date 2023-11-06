#!/bin/sh

docker volume create volume2

docker rm -f restore1

docker run -dit \
	--name restore1 \
	-v volume2:/mydata \
	-v $(pwd)/backup:/backup \
	alpine:3.18

docker exec -ti restore1 /bin/sh -c 'cd /; tar -xzvf  /backup/backup.zip ;   ls -la /mydata'



