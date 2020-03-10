FROM ubuntu:bionic-20200219

MAINTAINER Matthias Munz <m.munz@uni-luebeck.de>

RUN apt-get update && apt-get -y install git tabix samtools curl libz-dev libidn11 checkinstall pigz wget python3 python3-pip && apt-get clean
RUN pip3 install medaka gdown
RUN git clone --recursive https://github.com/jts/nanopolish.git /opt/nanopolish && make -C /opt/nanopolish
RUN gdown https://drive.google.com/uc?id=1mmuWkbBtbmMPKJk1rXF-o080ipJYa5Wc -O /opt/ont-guppy-cpu_3.4.5_linux64.tar.gz && tar xzf /opt/ont-guppy-cpu_3.4.5_linux64.tar.gz -C /opt && rm /opt/ont-guppy-cpu_3.4.5_linux64.tar.gz
RUN gdown -O /opt/Homo_sapiens.GRCh38.dna.primary_assembly.mmi.gz && gunzip /opt/Homo_sapiens.GRCh38.dna.primary_assembly.mmi.gz

ENV PATH /opt/nanopolish:/opt/nanopolish/minimap2:/opt/ont-guppy-cpu/bin:${PATH}
