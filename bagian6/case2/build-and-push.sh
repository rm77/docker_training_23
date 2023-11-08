docker build -t mywebserver:2.1 case4/



docker tag mywebserver:2.1 10.21.84.254:8443/mywebserver:2.1
docker login -u user1 -p qazwsx 10.21.84.254:8443
docker push 10.21.84.254:8443/mywebserver:2.1



docker tag mywebserver:2.1 docker.io/royyana/mywebserver:2.1
docker login -u royyana -p XXXXXXXXXXdckr_pat_UU8I4_8G_A39PqBQmTdCRkdZWEQ 
docker push docker.io/royyana/mywebserver:2.1

