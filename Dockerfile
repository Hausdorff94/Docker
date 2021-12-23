FROM ubuntu:20.04

RUN apt-get update -y
RUN apt-get install python3 -y
RUN apt-get install python3-pip -y
RUN export DEBIAN_FRONTEND=noninteractive
RUN DEBIAN_FRONTEND=noninteractive apt-get install software-properties-common -y
RUN DEBIAN_FRONTEND=noninteractive add-apt-repository ppa:ubuntugis/ppa
RUN apt-get update -y
RUN apt-get install gdal-bin -y
RUN apt-get install libgdal-dev -y 
RUN export CPLUS_INCLUDE_PATH=/usr/include/gdal
RUN export C_INCLUDE_PATH=/usr/include/gdal
RUN pip3 install GDAL

EXPOSE 8000