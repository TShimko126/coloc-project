#!/bin/bash

#$ -cwd
#$ -S /bin/bash
for i in `find ../data/eQTLInputFiles/snpMatricesSupplement/ -name "*.suppl"`;
do
	file=`echo $i | xargs basename`
	sample=${file%%_Analysis*}
	cat $i | cut -f1,4 >> ~/meta/$sample$'_MAF.txt'
done

