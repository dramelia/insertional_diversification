#!/bin/bash

#$ -V -cwd

#$ -l h_rt=01:00:00

#$ -l h_vmem=20G

#$ -m be

echo going to node

java -jar /nobackup/medafisa/switchillumina/Merge2Beds.jar $SAMPLE "selectedInsert_${SAMPLE}_2reads.bed" "selectedInsert_${SAMPLE}_40reads.bed"

echo finished

