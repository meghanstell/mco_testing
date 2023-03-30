#! /usr/bin/env bash

src_dir="/glade/scratch/meghan/Lemhi/Seeding_Variables/SeedingVariables/CTRL/"

cmd="ncrcat -h -vTime,AS_LWC,AS_Tc"

function cat_data(){
    year=$1
    month=$2
    echo "${cmd} ${src_dir}/Seeding_criteria_${year}-${month}* SV_${month}_${year}.nc"
}

for year in `seq 2000 2013`; do
    for month in `seq -f %02g 01 12`; do
        cat_data $year $month
    done
done