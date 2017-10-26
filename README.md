# Graphviz-Docker

Graphviz 2.40.1 on Fedora 25.

1. Copy Vagrantfile into /DOT-FILE-PATH/, use vagrant setup graphviz docker container:
   > vagrant up
   
   Or 
   
   Use docker run command setup:
   > docker run --name graphviz -v /DOT-FILE-PATH/:/tmp --privileged xliu0106/graphviz:2.39
   
2. Run dot command:
   > docker exec graphviz dot -Tpng /tmp/test.dot -o /tmp/output.png

3. Then PNG file could be found in /DOT-FILE-PATH/.
