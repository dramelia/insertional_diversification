#How to configure the SwitchIllumina pipeline from https://bitbucket.org/mathildefog/switchillumina/src/master/ 
to work in 2022. ome programmes have been updated to avoid bugs in older versions as long as they retain the 
informatic function intended in the original pipeline. 

#Setting up the environment
#Linux bash version:
#Create a python 2.70 environment.
#Load the following versions of the programmes listed on 
https://bitbucket.org/mathildefog/switchillumina/src/master/

# except for:	
	#fastqc version 0.11.9. 
	# bcftools version 1.15 via bioconda
#Versions used that not specified in original pipeline:	
	# trimgalore 0.6.7
	
#Changes from original pipeline script:
	# fastqc 0.11.5 would have the the version used for the original pipeline as per the dates. This is no 
longer available. The only change that may affect this pipeline is that v0.11.6 and beyond automatically disable 
the kmer module. Due to the nature of the swith region we would like to keep over-represented sequences. amd 
therefore the module was re-enabled as per the v0.11.6 instructions o github 
https://github.com/s-andrews/FastQC/releases.
	# samtools command in step 2: now reads $samtools sort $SAMPLE.notSorted.bam -o $SAMPLE.bam  This allows 
it to be compatible with later versions of samtools that required the -o.


#check all versions in my shell in py270, and see if I can find where I changed a K in a source script 
from 1 to 0 or vice versa to fit with the previous version. This may be written in my howtocode docs either 
original or _V2.  


#AfterTrinitySelectInsert_NEW bash script and version changes
	#bcftools loaded via bioconda (version 1.15)
	#check the selectedInsert_$DONOR_bpCoverage_annotated.tsv file for the max depth (more depth will take 
longer to run. Inserts are <2000bp long from the script. Use common sense what may be a sensible depth to set if 
some have sequenced very deeply. bcftools mpileup will use the first d- <number> reads. 
	#change mpileup depth to d-<number> using:
#bcftools mpileup -f $HG19DIR/hg19.fasta $DONOR.inserts.bam --max-depth <INT> 

#finaljava_test...which version works and RENAMEME
