#!/bin/bash
#PBS -r n
#
#PBS -l walltime=02:00:00,nodes=1:ppn=2
#PBS -j oe
#
# --------------------------------------------
#
cd /panfs/panasas01/sscm/mf13567/GWAS_hip_shape_MF/kids17/ALS17vsCOMB/scripts

for a in `seq 10`
do
i=0
	while [ $i -lt 9 ]
	do 
		i=$(( $i + 1 ))
                cp ALSPAC_kids17_GWAS_HSM${a}_template.sh ALSPAC_kids17_GWAS_HSM${a}_${i}.sh
                sed -i 's/0template/0'${i}'/g'   ALSPAC_kids17_GWAS_HSM${a}_${i}.sh
		sed -i 's/template/'${i}'/g'   ALSPAC_kids17_GWAS_HSM${a}_${i}.sh
	done

	while [ $i -lt 23 ]
        do
                i=$(( $i + 1 ))
                cp  ALSPAC_kids17_GWAS_HSM${a}_template.sh  ALSPAC_kids17_GWAS_HSM${a}_${i}.sh
                sed -i 's/0template/'${i}'/g'   ALSPAC_kids17_GWAS_HSM${a}_${i}.sh
                sed -i 's/template/'${i}'/g'  ALSPAC_kids17_GWAS_HSM${a}_${i}.sh
        done
done
exit


