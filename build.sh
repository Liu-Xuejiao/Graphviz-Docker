#!/bin/sh
docker build -t xliu/graphviz:2.39 .
docker run --privileged xliu/graphviz:2.39 

CONTAINER_ID=`docker ps -l -q`

#commit changes and kill the running container
docker commit $CONTAINER_ID xliu/graphviz:2.39
docker push xliu/graphviz:2.39
