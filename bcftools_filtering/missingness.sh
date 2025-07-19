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
#Usage: sbatch missingness.sh

# Print start message
echo "Start"

#specify the directory containing the data
cd /home/ikb001/14pops_filtering/bcftools_filtering/vcf_files/

# Load bcftools module
module load bcftools

# Input parameters
input_vcf="14pop_maf0.01.vcf.gz"
missingness_threshold="0.4"
output_vcf="14pop_maf0.01_miss0.4.vcf.gz"

#filter based on site missingness
bcftools filter -i "F_MISSING <= 0.4" 14pop_maf0.01.vcf.gz > 14pop_maf0.01_miss0.4.vcf.gz

# Print completion message
echo "Done"

# unload bcftools
module unload bcftools

# End of script

