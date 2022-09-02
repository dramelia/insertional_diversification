#!/bin/bash

#$ -V -cwd

#$ -l h_rt=01:00:00

#$ -l h_vmem=20G

#$ -m be

export SAMPLE=<sample_id>

echo going to node

java -jar /nobackup/medafisa/switchillumina/FindOverCoverRegion.jar $SAMPLE 40 50

echo finished
