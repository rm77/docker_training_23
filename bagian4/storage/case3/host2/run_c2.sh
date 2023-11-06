docker rm -f c2

docker run -dit \
	--privileged \
	--name c2 \
	-v $(pwd)/config:/config \
	--network=mylab3 \
	--entrypoint /config/install.sh \
	alpine:3.18



