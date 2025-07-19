#!/bin/bash

#SBATCH -p short # Partition (queue)
#SBATCH -N 1 # (leave at 1 unless using multi-node specific code)
#SBATCH -n 2 # Adjust cores based on data size/complexity
#SBATCH --mem=8192 # Adjust memory based on data size/complexity
#SBATCH --job-name="VCF_Index" # Job name for clarity
#SBATCH -o slurm.%N.%j.stdout.txt # STDOUT
#SBATCH -e slurm.%N.%j.stderr.txt # STDERR
#SBATCH --mail-user=ikb001@bucknell.edu # Email address
#SBATCH --mail-type=ALL # Mail events (NONE, BEGIN, END, FAIL, ALL)

# Description: This script bgzips the vcf files
# usage: sbatch indexfiles.sh

# Specify the directory containing the data
cd /home/ikb001/14pops_filtering/bcftools_filtering/vcf_files/

# Print "start" to log file
echo "start"

# Load BCFtools module
module load bcftools
    
# Index the VCF file

bcftools index -c 14pop.vcf.gz

# Print "end" to log file
echo "end"

# Unload BCFtools module
module unload bcftools

# End