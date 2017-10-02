# Graphviz-Docker

Install Graphviz into Fedora 23

1. Use vagrant setup graphviz docker container:
   > vagrant up

Or

2. Use docker run command setup:
   > docker run --name graphviz -v /DOT-FILE-PATH/:/tmp --privileged xliu0106/graphviz:2.39
   
Run dot command:
   > docker exec graphviz dot -Tpng /tmp/test.dot -o /tmp/output.png

Then PNG file could be found in /DOT-FILE-PATH/.
