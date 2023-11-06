docker rm -f c1

docker run -dit \
	--name c1 \
	-p 9022:9022 \
	--network mylab3 \
	-v $(pwd)/config:/config \
	-v $(pwd)/sharedata:/shareddata \
	--entrypoint "/config/install.sh" \
	alpine:3.18






