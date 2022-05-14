#!/bin/bash

#$ -V -cwd

#$ -l h_rt=01:00:00

#$ -l h_vmem=20G

#$ -m be

echo going to node

bwa mem -t 10 /nobackup/medafisa/hg19/hg19.fa /nobackup/medafisa/data/$SAMPLE/CleaningWithTrimGalore/$VAL1 /nobackup/medafisa/data/$SAMPLE/CleaningWithTrimGalore/$VAL2 | samtools view -bSu - > $SAMPLE.notSorted.bam

echo finished
