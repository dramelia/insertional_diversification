#!/bin/bash

#$ -V -cwd

#$ -l h_rt=01:00:00

#$ -l h_vmem=20G

#$ -m be

export SAMPLE=<sample_id>
export PATH=/PATH/TO/GENCODE.V19

echo going to node

bedmap --echo --echo-map-id-uniq --delim '\t' "selectedInsert_${SAMPLE}_merged_sorted.bed" /$PATH/gencode.v19.annotation.exon.gene_shortedV2.bed > "selectedInsert_${SAMPLE}_Annotated.bed"

echo finished
