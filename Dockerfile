# https://hub.docker.com/_/ubuntu
# https://github.com/lh3/minimap2
# 

FROM ubuntu:bionic-20200219

RUN apt-get update && apt-get -y install git tabix samtools curl libz-dev checkinstall pigz wget python3 python3-pip

pip3 install medaka

#RUN curl -L https://github.com/lh3/minimap2/releases/download/v2.17/minimap2-2.17_x64-linux.tar.bz2 | tar -jxvf - -C /opt/

RUN git clone --recursive https://github.com/jts/nanopolish.git /opt && make -C /opt/nanopolish
