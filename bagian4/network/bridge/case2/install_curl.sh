#!/bin/sh

docker exec -ti instance1 /bin/sh -c 'apk update && apk add curl'
docker exec -ti instance3 /bin/sh -c 'apk update && apk add curl'
docker exec -ti instance4 /bin/sh -c 'apk update && apk add curl'
docker exec -ti instance5 /bin/sh -c 'apk update && apk add curl'
