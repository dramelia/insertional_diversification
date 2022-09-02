#!/bin/bash

#$ -V -cwd

#$ -l h_rt=12:00:00

#$ -l h_vmem=50G

#$ -m be

echo going to node

export SAMPLE=<sample_id>
export DONOR=<donor_id>

#Remember to change the AfterTrinitySelectInsert_NEW.sh script to the correct depth

./AfterTrinitySelectInsert_NEW.sh &&
./finaljava.sh &&

echo done
