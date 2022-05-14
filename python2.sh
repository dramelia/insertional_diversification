#!/bin/bash

#$ -V -cwd

#$ -l h_rt=01:00:00

#$ -l h_vmem=20G

#$ -m be

echo going to node

python /nobackup/medafisa/switchillumina/ValidateInserts.py $SAMPLE.bam $SAMPLE 2

echo finished

