# https://hub.docker.com/_/ubuntu

FROM ensemblorg/ensembl-vep:bionic-20200219

RUN apt-get update && apt-get -y install samtools curl

RUN curl -L https://github.com/lh3/minimap2/releases/download/v2.17/minimap2-2.17_x64-linux.tar.bz2 | tar -jxvf - -C /opt/
