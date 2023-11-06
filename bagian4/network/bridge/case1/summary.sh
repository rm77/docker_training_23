for i in $(docker ps --all -q);
do 
    docker inspect --format "{{.Name}} {{.State.Status }} {{range.NetworkSettings.Networks}}{{.IPAddress}}{{end}}" $i
done
