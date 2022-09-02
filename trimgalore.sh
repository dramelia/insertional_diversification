#!/bin/bash

#$ -V -cwd

#$ -l h_rt=04:00:00

#$ -l h_vmem=100G

#$ -m be

export SAMPLE=<sample_id>

echo going to node

trim_galore --illumina --paired -q 20 --length 99 --output_dir CleaningWithTrimGalore/ $SAMPLE_1.fastq $SAMPLE_2.fastq

echo finished

