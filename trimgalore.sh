#!/bin/bash

#$ -V -cwd

#$ -l h_rt=04:00:00

#$ -l h_vmem=100G

#$ -m be

echo going to node

trim_galore --illumina --paired -q 20 --length 99 --output_dir CleaningWithTrimGalore/ SRR5430225_A_1.fastq SRR5430225_A_2.fastq

echo finished

