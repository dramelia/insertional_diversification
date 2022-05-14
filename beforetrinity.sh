#!/bin/bash

#$ -V -cwd

#$ -l h_rt=24:00:00

#$ -l h_vmem=100G

#$ -m be

export RAW1=SRR5430225_A_1.fastq
export RAW2=SRR5430225_A_2.fastq
export VAL1=SRR5430225_A_1_val_1.fq
export VAL2=SRR5430225_A_2_val_2.fq
export SAMPLE=SRR5430225_A

/nobackup/medafisa/data/$SAMPLE/trimgalore.sh ./trimgalore &&
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

