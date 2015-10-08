#!/bin/bash

#$ -cwd
#$ -S /bin/bash
zcat ../MatrixEQTL/Adipose_Subcutaneous_Analysis.cis.eqtl.gz | grep ENSG00000184206.7 > ~/Adipose_Sub_Test.txt
zcat ../MatrixEQTL/Adipose_Visceral_Omentum_Analysis.cis.eqtl.gz | grep ENSG00000184206.7 > ~/Adipose_Vis_Test.txt

