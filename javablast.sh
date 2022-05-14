#!/bin/bash

#$ -V -cwd

#$ -l h_rt=2:00:00

#$ -l h_vmem=50G

#$ -m be

echo going to node

java -jar /nobackup/medafisa/switchillumina/KeepInsertIfContigIsSwitchInsertSwitch.jar $SAMPLE

echo finished
