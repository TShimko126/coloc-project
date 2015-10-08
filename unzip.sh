#!/bin/bash
#$ -m e
#$ -M tshimko@stanford.edu
#$ -cwd
#$ -t 1-44
#$ -p -50
#$ -S /bin/bash

file=`ls -d1 /srv/scratch/tshimko/data/MatrixEQTL/allCisSNPGenePairs/* | sed -n ${SGE_TASK_ID}p`

file2=`ls /srv/scratch/tshimko/data/MatrixEQTL/allCisSNPGenePairs/ | sed -n ${SGE_TASK_ID}p`

zcat $file > /srv/scratch/tshimko/analysis/tmp/${file2}.txt
