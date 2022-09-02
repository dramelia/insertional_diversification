#!/bin/bash

#$ -V -cwd

#$ -l h_rt=6:00:00

#$ -l h_vmem=32G

#$ -l nodes=1,ppn=8

#$ -m be

#$ -l node_type=24core-768G

# Trinity likes lots of memory across a parallel system. Please change grid commands to suit your resource. 

export SAMPLE=<sample_id>

echo going to node

/PATH/TO/SwitchScriptsIllumina/./runInserts.sh $SAMPLE

echo finished
