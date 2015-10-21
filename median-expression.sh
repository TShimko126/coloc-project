#!/bin/bash
#$ -cwd
#$ -t 1-53
#$ -p -50
#$ -S /bin/bash

file=`ls /mnt/lab_data/montgomery/shared/datasets/gtex/GTEx_Analysis_2015-01-12/rna-seq | grep '\.rpkm.txt' | sed -n ${SGE_TASK_ID}p`
echo $file
Rscript --vanilla ./coloc-analysis/median-expression.R $file
