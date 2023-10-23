setwd("/media/fmr/HDD2/RNAseq_GSE101705/2.Trimmed_Files/")

all.files <- list.files("/media/fmr/HDD2/RNAseq_GSE101705/2.Trimmed_Files")

for(i in all.files){
  align(index = "/media/fmr/HDD2/RNAseq_GSE101705/4.Reference Genome/hg38.99/hg38.99", readfile1 = i, type = "rna", input_format = "gzFASTQ", output_format = "BAM" , nthreads = 16)
}
