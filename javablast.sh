#!/bin/bash

#$ -V -cwd

#$ -l h_rt=2:00:00

#$ -l h_vmem=50G

#$ -m be

export SAMPLE=<sample_id>

echo going to node

java -jar /PATH/TO/SwitchScriptsIllumina/KeepInsertIfContigIsSwitchInsertSwitch.jar $SAMPLE

echo finished
