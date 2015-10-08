#!/bin/bash

#$ -cwd
#$ -S /bin/bash
zcat ../MatrixEQTL/Adipose_Subcutaneous_Analysis.cis.eqtl.gz | cut -f2 | uniq | wc -l
