FROM ubuntu:16.04

MAINTAINER yilativs@gmail.com

ENV REFRESHED_AT 2015-02-18

RUN apt-get -y update; \
    apt-get -y install git swig cmake gcc g++ libftgl-dev libtbb2 libtbb-dev libboost-all-dev libgl1-mesa-dev libfreetype6-dev liboce-modeling-dev opencollada-dev liboce-foundation-dev; \
    rm -rf /var/lib/apt/lists/*
#RUN apt-get -y update && apt-get -y install libtbb2 libboost-all-dev && rm -rf /var/lib/apt/lists/*

#RUN git clone http://github.com/tpaviot/oce.git /opt/sources/oce
#RUN mkdir /opt/sources/oce/build
#RUN cmake -B/opt/sources/oce/build -H/opt/sources/oce 
#RUN cd /opt/sources/oce/build && make && make install
RUN git clone http://github.com/yilativs/IfcOpenShell.git /opt/sources/ifcopenshell
#RUN mkdir /opt/sources/ifcopenshell/build
RUN cmake -B/opt/sources/ifcopenshell/build -H/opt/sources/ifcopenshell/cmake
RUN cd /opt/sources/ifcopenshell/build && make && make install
#COPY usr /usr 
#COPY opt /opt
#ENV LD_LIBRARY_PATH /usr/local/lib:$LD_LIBRARY_PATH
RUN rm -rf /opt/sources
