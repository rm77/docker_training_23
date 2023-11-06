docker run \
	-dit \
	--name c3 \
	--network=mylab3 \
	alpine:3.18


docker exec -ti c1 /bin/sh -c 'apk update && apk add curl'

