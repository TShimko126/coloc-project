#!/bin/bash
#$ -m e
#$ -M tshimko@stanford.edu
#$ -cwd
#$ -t 1-946
#$ -p -50
#$ -S /bin/bash

files=`sed -n ${SGE_TASK_ID}p tissue_combinations.txt`

Rscript --vanilla ./coloc-analysis/coloc-subset.R $files
