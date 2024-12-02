#!/bin/bash
#SBATCH --job-name=run.score
#SBATCH --partition=najq
#SBATCH --qos=normal-naj


PLINK2="/s3buckets/adamnaj-lab-psom-s3-bucket-01/bazemork/applications/plink/plink2"

$PLINK2 --pfile ../Kunkle_pathPRS/qc_out/final/ukb_imp_eur_prs_qc_v3_merge_biallelic \
	--score data/bigsnpr_info_snp.txt 5 3 6 header \
	--extract data/included_snps_final.txt \
	--keep data/included_eids.txt \
	--out data/scored_cohort
