#!/bin/bash

#$ -V -cwd

#$ -l h_rt=01:00:00

#$ -l h_vmem=20G

#$ -m be

export SAMPLE=<sample_id>

echo going to node

bedtools genomecov -dz -ibam $SAMPLE.bam > "${SAMPLE}_depth_v4_bedtools.txt"

echo finished
