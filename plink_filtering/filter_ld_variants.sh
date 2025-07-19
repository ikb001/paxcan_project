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
#Usage: sbatch filter_ld_variants.sh

#specify the directory containing the data
cd /home/ikb001/14pops_filtering/plink_filtering/

# Print start message
echo "Start"

# Load PLINK module
module load plink

# filter variants within 1 kb of each other with an r2 of 0.8
plink --bfile 14pop_biallelic_snps_miss0.4_thin10.newID.mac1.maf0.01 --aec --exclude 14pop_biallelic_snps_miss0.4_thin10.newID.mac1.maf0.01.ldkb1r0.8.prune.out --make-bed --out 14pop_biallelic_snps_miss0.4_thin10.newID.mac1.maf0.01.ldkb1r0.8

# Print completion message
echo "Done"

# unload plink
module unload plink

# End of script
