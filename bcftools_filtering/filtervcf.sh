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
#Usage: sbatch filtervcf.sh

# Print start message
echo "Start"

# Load bcftools module
module load bcftools

#specify the directory containing the data
cd /home/ikb001/14pops_filtering/bcftools_filtering/vcf_files/

# Input parameters
input_vcf="14pop.vcf.gz"
maf_threshold="0.01"
output_vcf="14pop_maf0.01.vcf.gz"

# Filter VCF file based on MAF
bcftools filter -i "MAF >= $maf_threshold" "$input_vcf" > "$output_vcf"

# unload bcftools
module unload bcftools

# Print completion message
echo "Done"