#!/bin/bash

#$ -V -cwd

#$ -l h_rt=01:00:00

#$ -l h_vmem=20G

#$ -m be

export SAMPLE=<sample_id>

echo going to node

java -jar /PATH/TO/SwitchIlluminaScripts/Merge2Beds.jar $SAMPLE "selectedInsert_${SAMPLE}_2reads.bed" "selectedInsert_${SAMPLE}_40reads.bed"

echo finished

