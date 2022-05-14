#!/bin/bash

#$ -V -cwd

#$ -l h_rt=6:00:00

#$ -l h_vmem=32G

#$ -l nodes=1,ppn=8

#$ -m be

#$ -l node_type=24core-768G

export SAMPLE=SRR5430225_A

echo going to node

/nobackup/medafisa/switchillumina/./runInserts.sh $SAMPLE

echo finished
