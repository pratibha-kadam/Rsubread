#1.Quality Check
fastqc *.fastq.gz -o Fastqc

#2.Trimming the Reads using Trimmomatic
for f in *;
do
echo started for $f
java -jar /home/fmr/Trimmomatic-0.39/trimmomatic-0.39.jar SE -phred33 "$f" Trimmed_"$f" LEADING:3 TRAILING:3 SLIDINGWINDOW:4:20 MINLEN:36 -threads 16;
done


