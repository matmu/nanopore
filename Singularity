Bootstrap: docker
From: matmu/nanopore:latest

%labels
Maintainer Matthias Munz <m.munz@uni-luebeck.de>

%help
Software for analysing Nanopore sequencing data.
Available programs: 
  samtools
  minimap2
  nanopolish
  medaka
  guppy_basecaller (CPU version)
  guppy_aligner (CPU version)
  guppy_barcoder (CPU version)

A minimap2 index for reference genome Homo_sapiens.GRCh38.dna.primary_assembly.fa.gz is available at /opt/Homo_sapiens.GRCh38.dna.primary_assembly.mmi

%environment
    export PATH=/opt/nanopolish:/opt/ont-guppy-cpu/bin:/opt/nanopolish/minimap2:${PATH}
    
