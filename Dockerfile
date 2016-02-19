FROM ubuntu:16.04

MAINTAINER yilativs@gmail.com

ENV REFRESHED_AT 2015-02-18

RUN apt-get -y update; \
    apt-get -y install git swig cmake gcc g++ libftgl-dev libtbb2 libtbb-dev libboost-all-dev libgl1-mesa-dev libfreetype6-dev liboce-modeling-dev opencollada-dev liboce-foundation-dev; \
    rm -rf /var/lib/apt/lists/*;
    

RUN git clone http://github.com/yilativs/IfcOpenShell.git /opt/sources/ifcopenshell
RUN cmake -B/opt/sources/ifcopenshell/build -H/opt/sources/ifcopenshell/cmake
RUN cd /opt/sources/ifcopenshell/build && make && make install
RUN rm -rf /opt/sources
RUN dpkg -l | grep '\-dev' | cut -d' ' -f3 | xargs apt-get -y  purge
