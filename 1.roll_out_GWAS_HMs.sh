#!/bin/bash
#PBS -r n
#
#PBS -l walltime=02:00:00,nodes=1:ppn=2
#PBS -j oe
#
# --------------------------------------------
#
cd /panfs/panasas01/sscm/mf13567/GWAS_hip_shape_MF/kids17/ALS17vsCOMB/scripts

i=0
	while [ $i -lt 10 ]
	do 
		i=$(( $i + 1 ))
                cp ALSPAC_kids17_GWAS_template.sh ALSPAC_kids17_GWAS_HSM${i}_template.sh
                sed -i 's/0mode/0'${i}'/g'   ALSPAC_kids17_GWAS_HSM${i}_template.sh
		sed -i 's/mode/'${i}'/g'   ALSPAC_kids17_GWAS_HSM${i}_template.sh
	done


