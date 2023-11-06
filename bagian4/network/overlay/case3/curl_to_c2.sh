docker exec -ti c1 \
/bin/sh -c '

curl \
	-X GET "http://c2/ip" \
	-H "accept: application/json"

'
