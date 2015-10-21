#!/bin/bash
#$ -m e
#$ -M tshimko@stanford.edu
#$ -cwd
#$ -t 1-1892
#$ -p -50
#$ -S /bin/bash

files=`sed -n ${SGE_TASK_ID}p tissue_combinations_full.txt`

Rscript --vanilla ./coloc-analysis/coloc-subset.R $files
