#!/bin/bash
#$ -M tshimko@stanford.edu
#$ -cwd
#$ -S /bin/bash
i=1

Rscript --vanilla ./coloc-analysis/coloc.R $(sed -n ${i}p tissue_combinations.txt)
