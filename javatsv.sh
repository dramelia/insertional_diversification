#!/bin/bash

#$ -V -cwd

#$ -l h_rt=01:00:00

#$ -l h_vmem=20G

#$ -m be

echo going to node

sort-bed "selectedInsert_${SAMPLE}_merged.bed" > "selectedInsert_${SAMPLE}_merged_sorted.bed"

java -jar /nobackup/medafisa/switchillumina/CalculateInsertCoverage.jar $SAMPLE "selectedInsert_${SAMPLE}_Annotated_sorted.bed"

echo finished
