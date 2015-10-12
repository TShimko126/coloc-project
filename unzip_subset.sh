#!/bin/bash
#$ -m e
#$ -M tshimko@stanford.edu
#$ -cwd
#$ -t 1-44
#$ -S /bin/bash

file=`ls -d1 cisOutput/* | sed -n ${SGE_TASK_ID}p`

file2=`ls cisOutput/ | sed -n ${SGE_TASK_ID}p`

zcat $file > /srv/scratch/tshimko/analysis/tmp_subset/${file2}.txt
