#!/bin/bash

#$ -V -cwd

#$ -l h_rt=01:00:00

#$ -l h_vmem=5G

#$ -m be

export SAMPLE=<sample_id>

echo going to node

samtools index $SAMPLE.bam

echo finished
