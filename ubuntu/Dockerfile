FROM ubuntu:16.04

MAINTAINER yilativs@gmail.com

ENV REFRESHED_AT 2015-03-02

RUN apt-get -y update && \
    apt-get -y install git swig cmake gcc g++ libftgl-dev libtbb2 libtbb-dev libboost-all-dev libgl1-mesa-dev libfreetype6-dev liboce-modeling-dev opencollada-dev liboce-foundation-dev && \
    rm -rf /var/lib/apt/lists/* && \
    git clone https://github.com/IfcOpenShell/IfcOpenShell.git /opt/sources/ifcopenshell && \
    cmake -B/opt/sources/ifcopenshell/build -H/opt/sources/ifcopenshell/cmake && \
    cd /opt/sources/ifcopenshell/build && make && make install; \ 
    rm -rf /opt/sources;  \ 
    apt-get -y purge git; \
    apt-get -y purge make; \
    apt-get -y purge cmake; \
    apt-get -y purge cpp; \
    dpkg -l | grep '\-dev' | cut -d' ' -f3 | xargs apt-get -y  purge
