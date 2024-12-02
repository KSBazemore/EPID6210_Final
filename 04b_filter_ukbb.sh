#!/bin/bash
#SBATCH --job-name=filt2tosto
#SBATCH --partition=najq
#SBATCH --qos=normal-naj


PLINK2="/s3buckets/adamnaj-lab-psom-s3-bucket-01/bazemork/applications/plink/plink2"


$PLINK2 --pfile /s3buckets/adamnaj-lab-psom-s3-bucket-01/bazemork/Kunkle_pathPRS/qc_out/final/ukb_imp_eur_prs_qc_v3_merge_biallelic \
	--make-bed \
	--extract data/included_snps.txt \
	--keep data/included_eids.txt \
	--out data/filtered_cohort

