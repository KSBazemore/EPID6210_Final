#!/bin/bash

#SBATCH --job-name=popdense_covar
#SBATCH --partition=najq
#SBATCH --qos normal-naj

#awk 'BEGIN {FS="\t"; OFS="\t"} NR==1 {for (i=1; i<=NF; i++) {if ($i=="f.eid") eid=i; if ($i=="f.20118.0.0") col2=i; if ($i=="f.42021.0.0") col3=i; if ($i=="f.42020.0.0") col4=i; if ($i=="f.20016.0.0") col5=i; if ($i=="f.20016.0.1") col6=i; if ($i=="f.20016.0.2") col7=i; if ($i=="f.20016.0.3") col8=i} print $eid, $col2, $col3, $col4, $col5, $col6, $col7, $col8} NR>1 {print $eid, $col2, $col3, $col4, $col5, $col6, $col7, $col8}' /s3buckets/adamnaj-lab-psom-s3-bucket-01/public-rawdata/UK_Biobank_Pheno_2023/ukb674370.tab > popdense_covar.txt

awk 'BEGIN {FS="\t"; OFS="\t"} 
NR==1 {
    for (i=1; i<=NF; i++) {
        if ($i=="f.eid") eid=i;
        if ($i=="f.20118.0.0") col2=i;
        if ($i=="f.42021.0.0") col3=i;
        if ($i=="f.42020.0.0") col4=i;
        if ($i=="f.20016.0.0") col5=i;
        if ($i=="f.20016.1.0") col6=i;
        if ($i=="f.20016.2.0") col7=i;
        if ($i=="f.20016.3.0") col8=i;
    }
    print $eid, $col2, $col3, $col4, $col5, $col6, $col7, $col8
}
NR>1 {print $eid, $col2, $col3, $col4, $col5, $col6, $col7, $col8}' /s3buckets/adamnaj-lab-psom-s3-bucket-01/public-rawdata/UK_Biobank_Pheno_2023/ukb674370.tab > data/popdense_covar.txt

