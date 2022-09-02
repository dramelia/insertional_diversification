#!/bin/bash

#$ -V -cwd

#$ -l h_rt=01:00:00

#$ -l h_vmem=20G

#$ -m be

export SAMPLE=<sample_id>

echo going to node

samtools sort $SAMPLE.notSorted.bam -o $SAMPLE.bam

echo finished
