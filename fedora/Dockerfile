FROM fedora:23

MAINTAINER yilativs@gmail.com

ENV REFRESHED_AT 2015-03-03

RUN dnf install -y findutils git gcc-c++ swig cmake make ftgl-devel tbb-devel  boost-devel mesa-libGL-devel freetype-devel glew-devel freeglut-devel OCE-devel openCOLLADA-devel python3-devel pcre-devel blender && \
    dnf clean all && \
    git clone https://github.com/IfcOpenShell/IfcOpenShell.git /opt/sources/ifcopenshell && \
    cmake -B/opt/sources/ifcopenshell/build -H/opt/sources/ifcopenshell/cmake -DOPENCOLLADA_INCLUDE_DIR=/usr/include/ -DOPENCOLLADA_LIBRARY_DIR=/usr/lib64/ && \
    cd /opt/sources/ifcopenshell/build && make && make install; \
    rm -rf /opt/sources; \  
    dnf -y remove  git; \
    dnf -y remove make; \
    dnf -y remove cmake; \
    dnf -y remove gcc-c++; \
    dnf -y clean all; 
#\
#    rpm -qa | grep '\-devel' | grep -v python | cut -d' ' -f1 | xargs dnf remove -y
