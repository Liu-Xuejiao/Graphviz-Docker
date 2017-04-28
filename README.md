# Graphviz-Docker

Install Graphviz into Fedora 23

1. Use vagrant setup graphviz docker container:
   > vagrant up
2. Use docker run command setup:
   > docker run --name graphviz -v /dotFilePath/dot:/tmp --privileged xliu0106/graphviz:2.39
   
Copy dot file into dot volume, and run dot command:
   > docker exec graphviz dot -Tpng /tmp/test.dot -o /tmp/output.png
