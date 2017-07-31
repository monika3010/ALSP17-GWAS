#!/bin/bash
#PBS -r n
#
#PBS -l walltime=36:00:00,nodes=1:ppn=2
#PBS -j oe
#PBS -o /panfs/panasas01/sscm/mf13567/GWAS_hip_shape_MF/kids17/ALS17vsCOMB/scripts/GWAS_HSM_template.log 
#
# --------------------------------------------
#
cd /panfs/panasas01/sscm/mf13567/GWAS_hip_shape_MF/kids17/ALS17vsCOMB/scripts
module add apps/snptest.2.5.0


snptest_v2.5 -data /panfs/panasas01/shared/alspac/studies/latest/alspac/genetic/variants/arrays/gwas/imputed/1000genomes/released/2015-10-30/data/dosage_bgen/data_chr0template.bgen \
 /panfs/panasas01/sscm/mf13567/GWAS_hip_shape_MF/kids17/data/merged_exclusions_removed.sample \
 -exclude_samples /panfs/panasas01/sscm/mf13567/GWAS_hip_shape_MF/kids17/data/exclusion_list_children.txt \
 -assume_chromosome template \
 -frequentist 1 \
 -method expected \
 -pheno HSMmode_17vsComb \
 -use_raw_phenotypes \
 -sex_column sex \
 -log /panfs/panasas01/sscm/mf13567/GWAS_hip_shape_MF/kids17/ALS17vsCOMB/outputs/logs/SNPTEST_ALS17vcCOMB_HSMmode_chrtemplate.log \
 -o /panfs/panasas01/sscm/mf13567/GWAS_hip_shape_MF/kids17/ALS17vsCOMB/outputs/SNPTEST_ALS17vcCOMB_HSMmode_chrtemplate.out  

