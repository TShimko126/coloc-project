#!/bin/bash
#$ -m e
#$ -M tshimko@stanford.edu
#$ -cwd
#$ -t 1-44
#$ -p -30
#$ -S /bin/bash

file=`ls -d1 /users/nteran/data/matrixEqtlSubset/cisOutput/* | sed -n ${SGE_TASK_ID}p`

file2=`ls /users/nteran/data/matrixEqtlSubset/cisOutput/ | sed -n ${SGE_TASK_ID}p`

zcat $file > /srv/scratch/tshimko/analysis/tmp_subset/${file2}.txt
