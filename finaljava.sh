#!/bin/bash

#$ -V -cwd

#$ -l h_rt=1:00:00

#$ -l h_vmem=50G

#$ -m be

#!/bin/bash
DONOR=SRR5430225_A
HG19DIR="/nobackup/medafisa/hg19"
ILLUMINASCRIPTSDIR="/nobackup/medafisa/switchillumina"

#rename trinity insert.fasta files to .fa so the javascript recoginises them

find . -depth -name "insert*.fasta" -exec sh -c 'f="{}"; mv -- "$f" "${f%.fasta}.fa"' \;

#run the original javascript 

java -jar $ILLUMINASCRIPTSDIR/KeepInsertIfContigIsSwitchInsertSwitch.jar $DONOR
