module load seq_tools
bgzip 14pops.vcf
module load bcftools

#allele frequency
vcftools --gzvcf 14pops.vcf.gz --freq2 --out 14pops_allelefreq --max-alleles 4
VCFtools - 0.1.17
(C) Adam Auton and Anthony Marcketta 2009

Parameters as interpreted:
	--gzvcf 14pops.vcf.gz
	--max-alleles 4
	--freq2
	--out 14pops_allelefreq

Using zlib version: 1.2.11
After filtering, kept 165 out of 165 Individuals
Outputting Frequency Statistics...
After filtering, kept 2164011 out of a possible 2164011 Sites
Run Time = 31.00 seconds

#depth per individual
vcftools --gzvcf 14pops.vcf.gz --depth --out 14pops_depth_per_indv
VCFtools - 0.1.17
(C) Adam Auton and Anthony Marcketta 2009

Parameters as interpreted:
        --gzvcf 14pops.vcf.gz
        --depth
        --out 14pops_depth_per_indv

Using zlib version: 1.2.11
After filtering, kept 165 out of 165 Individuals
Outputting Mean Depth by Individual
After filtering, kept 2164011 out of a possible 2164011 Sites
Run Time = 31.00 seconds

#missing data per individual
vcftools --gzvcf 14pops.vcf.gz --missing-indv --out 14pops_missing_per_indv
VCFtools - 0.1.17
(C) Adam Auton and Anthony Marcketta 2009

Parameters as interpreted:
        --gzvcf 14pops.vcf.gz
        --missing-indv
        --out 14pops_missing_per_indv

Using zlib version: 1.2.11
After filtering, kept 165 out of 165 Individuals
Outputting Individual Missingness
After filtering, kept 2164011 out of a possible 2164011 Sites
Run Time = 28.00 seconds

#mean depth per site
vcftools --gzvcf 14pops.vcf.gz --site-mean-depth --out 14pops_mean_depth_per_site
VCFtools - 0.1.17
(C) Adam Auton and Anthony Marcketta 2009

Parameters as interpreted:
        --gzvcf 14pops.vcf.gz
        --out 14pops_mean_depth_per_site
        --site-mean-depth

Using zlib version: 1.2.11
After filtering, kept 165 out of 165 Individuals
Outputting Depth for Each Site
After filtering, kept 2164011 out of a possible 2164011 Sites
Run Time = 36.00 seconds

#site quality
vcftools --gzvcf 14pops.vcf.gz --site-quality --out 14pops_site_quality
VCFtools - 0.1.17
(C) Adam Auton and Anthony Marcketta 2009

Parameters as interpreted:
        --gzvcf 14pops.vcf.gz
        --out 14pops_site_quality
        --site-quality

Using zlib version: 1.2.11
After filtering, kept 165 out of 165 Individuals
Outputting Quality for Each Site
After filtering, kept 2164011 out of a possible 2164011 Sites
Run Time = 15.00 seconds

#missing data per site
vcftools --gzvcf 14pops.vcf.gz --missing-site --out 14pops_missing_per_site
VCFtools - 0.1.17
(C) Adam Auton and Anthony Marcketta 2009

Parameters as interpreted:
        --gzvcf 14pops.vcf.gz
        --out 14pops_missing_per_site
        --missing-site

Using zlib version: 1.2.11
After filtering, kept 165 out of 165 Individuals
Outputting Site Missingness
After filtering, kept 2164011 out of a possible 2164011 Sites
Run Time = 30.00 seconds

#heterozygosity and inbreeding coefficient
vcftools --gzvcf 14pops.vcf.gz --het --out 14pops_het
VCFtools - 0.1.17
(C) Adam Auton and Anthony Marcketta 2009

Parameters as interpreted:
        --gzvcf 14pops.vcf.gz
        --het
        --out 14pops_het

Using zlib version: 1.2.11
After filtering, kept 165 out of 165 Individuals
Outputting Individual Heterozygosity
        Individual Heterozygosity: Only using biallelic SNPs.
After filtering, kept 2164011 out of a possible 2164011 Sites
Run Time = 27.00 seconds