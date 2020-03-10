FROM ubuntu:bionic-20200219

RUN apt-get update && apt-get -y install git tabix samtools curl libz-dev checkinstall pigz wget python3 python3-pip
RUN pip3 install medaka
RUN git clone --recursive https://github.com/jts/nanopolish.git /opt/nanopolish && make -C /opt/nanopolish

ENV PATH="/opt/nanopolish:/opt/nanopolish/minimap2:${PATH}"
