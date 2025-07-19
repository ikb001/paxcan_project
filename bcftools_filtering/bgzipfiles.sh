#!/bin/bash 
#SBATCH -p short # partition (queue) 
#SBATCH -N 1 # (leave at 1 unless using multi-node specific code) 
#SBATCH -n 1 # number of cores 
#SBATCH --mem=4992 # total memory 
#SBATCH --job-name="vcf_index" # job name 
#SBATCH -o slurm.%N.%j.stdout.txt # STDOUT 
#SBATCH -e slurm.%N.%j.stderr.txt # STDERR 
#SBATCH --mail-user=ikb001@bucknell.edu # address to email 
#SBATCH --mail-type=ALL # mail events (NONE, BEGIN, END, FAIL, ALL) 
# Description: This script indexes VCF files using tabix
# Usage: sbatch bgzipfiles.sh

# Specify the directory containing the data
data_dir="/home/ikb001/14pops_filtering/bcftools_filtering/vcf_files/"

# Print start message
echo "Start"

# Load vcftools module
module load seq_tools

# Index each VCF file
for vcf_file in "$data_dir"/*.vcf; do
    bgzip "$vcf_file"
done

# Print end message
echo "End"

# Unload vcftools module
module unload seq_tools

# End of script
