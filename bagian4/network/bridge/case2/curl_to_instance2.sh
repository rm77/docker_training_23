INSTANCELIST="instance1 instance3 instance4 instance5"
for I in $INSTANCELIST
do
	echo  "\n\nexecuting from $I"
	docker exec -ti $I /bin/sh -c '

curl \
	-X GET "http://instance2/headers" \
	-H "accept: application/json"

curl \
	-X GET "http://instance2/ip" \
	-H "accept: application/json"

curl \
	-X GET "http://instance2/user-agent" \
	-H "accept: application/json"

'
done
