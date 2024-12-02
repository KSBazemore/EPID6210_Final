#!/bin/bash
#SBATCH --job-name=prs.tosto
#SBATCH --partition=najq
#SBATCH --qos=normal-naj


curl -L "https://ftp.ebi.ac.uk/pub/databases/spot/pgs/scores/PGS000053/ScoringFiles/Harmonized/PGS000053_hmPOS_GRCh37.txt.gz" > prs.tosto.txt.gz

