#set working Directory to your file path
setwd("/media/fmr/HDD2/RNAseq_GSE101705/")
#Load the library
library(Rsubread)

#Index the hg38 Reference Genome
buildindex(basename = "hg38.99",reference = "GRCh38.99.fa")

#Alignment to the Reference Genome
align(index = "/media/fmr/HDD2/RNAseq_GSE101705/4.Reference Genome/hg38.99/hg38.99", readfile1 = "Trimmed_SRR5853199.fastq.gz", type = "rna", input_format = "gzFASTQ", output_format = "BAM" , nthreads = 16)
  
#featureCounts
all_bam <- list.files("/media/fmr/HDD2/RNAseq_GSE101705/4.Bam_files/BAM")
fc <-featureCounts(files = paste(all_bam) , annot.ext = "/media/fmr/HDD2/RNAseq_GSE101705/4.Reference Genome/hg38.99/hg38.99.gtf",isGTFAnnotationFile =TRUE,GTF.featureType ="exon",GTF.attrType ="gene_id", nthreads = 16)
#Store the Counts in the variable
features <-fc$counts

fc$annotation
fc$stats

#write feature counts to a file
write.table(fc.df, file="GSE101705_featureCounts.tsv", sep ="  ")


#Convert Ensemble to Gene Symbol
library(org.Hs.eg.db)
fc <- fc$counts
fc.df <- as.data.frame(fc)
fc.df$symbol <- mapIds(org.Hs.eg.db, keys = row.names(fc.df), keytype = "ENSEMBL", column = "SYMBOL")
fc.df



write.table(ids ,file="Ensemble", sep ="  ")





