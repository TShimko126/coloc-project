#!/bin/bash

#$ -cwd
#$ -S /bin/bash
for i in `find ../data/eQTLInputFiles/snpMatrices/ -name "*.txt"`;
do
	file=`echo $i | xargs basename`
	sample=${file%%_Analysis*}
	n=`cat $i | head -1 | awk '{print NF-1}'`
	echo $sample$'\t'$n >> n_samples.txt
done

