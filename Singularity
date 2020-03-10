Bootstrap: docker
From: matmu/nanopore:latest

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

%environment
    SINGULARITYENV_PREPEND_PATH=/opt/nanopolish:/opt/ont-guppy-cpu/bin:/opt/ont-guppy-cpu/minimap2
    export SINGULARITYENV_PREPEND_PATH
