#!/bin/bash

#$ -V -cwd

#$ -l h_rt=01:00:00

#$ -l h_vmem=20G

#$ -m be

export SAMPLE=<sample_id>

echo going to node

sort-bed "selectedInsert_${SAMPLE}_merged.bed" > "selectedInsert_${SAMPLE}_merged_sorted.bed"

echo finished
