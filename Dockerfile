FROM fedora:25

RUN yum update -y
RUN yum -y install wget unzip bash rpm rpm-build
RUN yum -y install zlib-devel expat-devel ann-devel /bin/ksh bison m4 flex swig tk tcl freetype-devel fontconfig-devel tcl-devel tk-devel ruby ruby-devel guile-devel python-devel libXaw-devel libSM-devel libICE-devel libXpm-devel libXt-devel libXmu-devel libXext-devel libX11-devel libtool-ltdl libtool-ltdl-devel java-devel php-devel cairo-devel pango-devel gmp-devel gtk2-devel librsvg2-devel gts-devel libglade2-devel gtkglarea2-devel gtkglext-devel freeglut-devel perl-devel perl-ExtUtils-Embed lua-devel ocaml gd gd-devel ghostscript-devel poppler-glib-devel qt-devel DevIL-devel R-devel gcc-go glade3-libgladeui-devel golang lasi-devel mono-core 
RUN yum -y clean all

# check dependencies
#RUN wget http://www.graphviz.org/pub/graphviz/stable/SRPMS/graphviz-2.40.1-1.src.rpm
#RUN rpmbuild --rebuild graphviz-2.40.1-1.src.rpm | grep 'is'

ADD graphviz-fedora.repo /etc/yum.repos.d/
ADD graphviz.sh /graphviz.sh
RUN chmod +x /graphviz.sh

#Install Graphviz
RUN yum list 'graphviz*'
RUN yum -y install 'graphviz*-2.40.1-1.fc25'

CMD ["./graphviz.sh"]

