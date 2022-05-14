#!/bin/bash

#$ -V -cwd

#$ -l h_rt=01:00:00

#$ -l h_vmem=20G

#$ -m be

echo going to node

java -jar /nobackup/medafisa/switchillumina/FindOverCoverRegion.jar $SAMPLE 2 50

echo finished
