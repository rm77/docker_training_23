#!/bin/sh

mkdir -p backup

echo start container backup1

docker run -dit \
	--name backup1 \
	-v volume1:/mydata \
	-v $(pwd)/backup:/backup \
	alpine:3.18


echo "start backup process"

docker exec -ti backup1 tar -czvf /backup/backup.zip /mydata
docker rm -f backup1

ls -la $(pwd)/backup

