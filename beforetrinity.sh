#!/bin/bash

#$ -V -cwd

#$ -l h_rt=6:00:00

#$ -l h_vmem=100G

#$ -m be

export RAW1=<sample_id>_1.fastq
export RAW2=<sample_id>_2.fastq
export VAL1=<sample_id>_1_val_1.fq
export VAL2=<sample_id>_2_val_2.fq
export SAMPLE=<sample_id>

/PATH/TO/SAMPLE/FOLDER/$SAMPLE/trimgalore.sh ./trimgalore &&
./bwa.sh &&
./samtools.sh &&
./samtoolsindex.sh &&
./flagstat.sh &&
./bedtools.sh &&
./java1.sh &&
./python2.sh &&
./java2.sh &&
./python40.sh &&
./javamerge.sh &&
./sortbed.sh &&
./bedmap.sh &&
./sortannobed.sh &&
./javatsv.sh &&
./javainsertid.sh &&

echo done

