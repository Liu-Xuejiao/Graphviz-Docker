#!/bin/sh
docker build -t xliu0106/graphviz:2.39 .
docker run --privileged xliu0106/graphviz:2.39 

CONTAINER_ID=`docker ps -l -q`

#commit changes and kill the running container
docker commit $CONTAINER_ID xliu0106/graphviz:2.39
docker push xliu0106/graphviz:2.39
