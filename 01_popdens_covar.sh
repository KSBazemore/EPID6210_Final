#!/bin/bash

#SBATCH --job-name=popdense_covar
#SBATCH --partition=najq
#SBATCH --qos normal-naj

awk 'BEGIN {FS="\t"; OFS="\t"} NR==1 {for (i=1; i<=NF; i++) {if ($i=="f.eid") eid=i; if ($i=="f.20118.0.0") col2=i; if ($i=="f.42021.0.0") col3=i; if ($i=="f.42020.0.0") col4=i} print $eid, $col2, $col3, $col4} NR>1 {print $eid, $col2, $col3, $col4}' /s3buckets/adamnaj-lab-psom-s3-bucket-01/public-rawdata/UK_Biobank_Pheno_2023/ukb674370.tab > popdense_covar.txt
