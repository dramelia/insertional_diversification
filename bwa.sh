#!/bin/bash

#$ -V -cwd

#$ -l h_rt=01:00:00

#$ -l h_vmem=20G

#$ -m be

#If using bwa for the first time in the current environment ensure bwa is indexed. Put on an HPC node, it takes a while!
# $bwa index /PATH/TO/hg19/hg19.fa

export SAMPLE=<sample_id>.fastq
export VAL1=<sample_id>_val_1.fq
export VAL2=<sample_id>_val_2.fq

echo going to node

bwa mem -t 10 /PATH/hg19/hg19.fa /PATH/$SAMPLE/CleaningWithTrimGalore/$VAL1 /PATH/$SAMPLE/CleaningWithTrimGalore/$VAL2 | samtools view -bSu - > $SAMPLE.notSorted.bam

echo finished
