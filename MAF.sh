#!/bin/bash

#$ -cwd
#$ -S /bin/bash
#$ -t 1-44


i=`ls ~/subset_lists/ | sed -n ${SGE_TASK_ID}p`
prefix=`echo $i | sed 's/_Individuals.txt//g'`

vcftools \
  --gzvcf ~/AllIndividuals.vcf.gz \
  --keep ~/subset_lists/${i} \
  --freq2 \
  --out ${prefix}


