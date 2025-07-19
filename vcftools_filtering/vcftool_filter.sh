#!/bin/bash 
#SBATCH -p short # partition (queue) 
#SBATCH -N 1 # (leave at 1 unless using multi-node specific code) 
#SBATCH -n 1 # number of cores 
#SBATCH --mem=4992# total memory 
#SBATCH --job-name="vcf" # job name 
#SBATCH -o slurm.%N.%j.stdout.txt # STDOUT 
#SBATCH -e slurm.%N.%j.stderr.txt # STDERR 
#SBATCH --mail-user=ikb001@bucknell.edu # address to email 
#SBATCH --mail-type=ALL # mail events (NONE, BEGIN, END, FAIL, ALL) 
#Description: This script will run on input files
#Usage: sbatch vcftool_filter.sh

#specify the directory containing the data
cd /home/ikb001/14pops_filtering/vcftools_filtering/vcf_files/

# Print start message
echo "Start"

# Load vcftools module
module load seq_tools

# filter with vcf tools
vcftools --gzvcf 14pop_biallelic_snps.vcf.gz --remove-indels --max-missing 0.4 --thin 10 --recode --recode-INFO-all --out 14pop_biallelic_snps_miss0.4_thin10 --stdout | gzip -c > 14pop_biallelic_snps_miss0.4_thin10.vcf.gz

# Print completion message
echo "Done"

# unload vcftools
module unload seq_tools

# End of script