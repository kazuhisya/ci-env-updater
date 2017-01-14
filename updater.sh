#!/bin/bash

env_file="./envfile.txt"
pj_file="./projects.txt"

env=(`cat ${env_file}`)
#echo ${env[@]}

numLine=1
cat ${pj_file} | while read pj_name
do
	#echo $numLine: $pj_name
	echo "circlecli env -p ${pj_name} ${env[@]}"
	circlecli env -p ${pj_name} ${env[@]}
	numLine=$((numLine + 1))
done
