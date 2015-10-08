#!/bin/bash

#$ -cwd
#$ -S /bin/bash
for i in `find ../data/significantSNPGenePairs/ -name "*.snpgenes"`;
do
	file=`echo $i | xargs basename`
	sample=${file%%_Analysis*}
	cat $i | cut -f2 >> ~/meta/genes/$sample$'_genes.txt'
done

