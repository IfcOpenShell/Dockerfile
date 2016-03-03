FROM fedora:23

MAINTAINER yilativs@gmail.com

ENV REFRESHED_AT 2015-03-03

RUN dnf install -y git gcc-c++ swig cmake make libftgl-dev tbb-devel  boost-devel mesa-libGL-devel freetype-devel glew-devel freeglut-devel OCE-devel openCOLLADA-devel \
    dnf clean all && \
    git clone https://github.com/IfcOpenShell/IfcOpenShell.git /opt/sources/ifcopenshell && \
    cmake -B/opt/sources/ifcopenshell/build -H/opt/sources/ifcopenshell/cmake && \
    cd /opt/sources/ifcopenshell/build && make && make install; \ 
    dnf -y remove  git; \
    dnf -y remove make; \
    dnf -y remove cmake; \
    dnf -y remove cpp; \
    rpm -qa | grep '\-devel' | cut -d' ' -f1 | xargs dnf remove -y
