#!/bin/bash

#$ -V -cwd

#$ -l h_rt=01:00:00

#$ -l h_vmem=20G

#$ -m be

export SAMPLE=<sample_id>

echo going to node

sort -k1,1V -k2,2n "selectedInsert_${SAMPLE}_Annotated.bed" > "selectedInsert_${SAMPLE}_Annotated_sorted.bed"

echo finished
