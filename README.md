# Rsubread
Rsubread for RNAseq  data 

This Repository contains RNAseq analysis from Raw reads to feature counts.

#Steps involved:
1. Fastqc: To check Quality of Raw Reads
2. Trimmomatic: Trimming Reads(Adaptors if any)
3. Rsubread: Indexing of genome, alignment and feature count)

 #Scripts are provided  in the repository
 1. RNA_seq.sh : Linux based for first two steps
 2. Rsubread-RNA-Script.R : for Genome mapping and feature count
 3. R-script-for-all-files.R : R script to run the align command for all samples in loop
