FROM fedora:23

RUN yum update -y
RUN yum -y install wget unzip bash rpm rpm-build
RUN yum -y install zlib-devel expat-devel ann-devel /bin/ksh bison m4 flex swig tk tcl freetype-devel fontconfig-devel tcl-devel tk-devel ruby ruby-devel guile-devel python-devel libXaw-devel libSM-devel libICE-devel libXpm-devel libXt-devel libXmu-devel libXext-devel libX11-devel libtool-ltdl libtool-ltdl-devel java-devel php-devel cairo-devel pango-devel gmp-devel gtk2-devel librsvg2-devel gts-devel libglade2-devel gtkglarea2-devel gtkglext-devel freeglut-devel perl-devel perl-ExtUtils-Embed lua-devel ocaml gd gd-devel ghostscript-devel poppler-glib-devel qt-devel
RUN yum -y clean all


# check dependencies
#RUN wget http://www.graphviz.org/pub/graphviz/stable/SRPMS/graphviz-2.38.0-1.src.rpm
#RUN rpmbuild --rebuild graphviz-2.38.0-1.src.rpm | grep 'is'

ADD graphviz.sh /graphviz.sh
RUN chmod +x /graphviz.sh

#Install Graphviz
ADD graphviz-rhel.repo /etc/yum.repos.d/
RUN yum list 'graphviz*'
RUN yum -y install 'graphviz*'

CMD ["./graphviz.sh"]