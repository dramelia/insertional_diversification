#!/bin/bash

#$ -V -cwd

#$ -l h_rt=01:00:00

#$ -l h_vmem=20G

#$ -m be

export SAMPLE=<sample_id>

echo going to node

python /PATH/TO/SwithScriptsIllumina/ValidateInserts.py $SAMPLE.bam $SAMPLE 2

echo finished

