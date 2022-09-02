#!/bin/bash

#$ -V -cwd

#$ -l h_rt=01:00:00

#$ -l h_vmem=20G

#$ -m be

export SAMPLE=<sample_id>

echo going to node

java -jar /PATH/TO/IlluminaSwitchScripts/FindOverCoverRegion.jar $SAMPLE 2 50

echo finished
