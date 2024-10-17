#!/bin/bash
#Date:1/10/2024
#
<< readme
this script is for takup backup of given directory
usage:
./backup.sh <path of directory>
readme

source_dir=$1
timestamp=$(date '+%Y-%m-%d-%H-%M-%S')
target_dir=$2
bckup_dir="${target_dir}/backup_${timestamp}"

function create_bckup {

echo $bckup_dir

zip -r "${bckup_dir}.zip" "${source_dir}" > /dev/null
if [ $? -eq 0 ]; then
echo "backup create successfully"
else
	echo "backup was not perform for that particular $timestamp"
fi
}

function perform_rotation {
	bckups=($(ls -t "$target_dir/backup_"*.zip))
#	echo "${bckups[@]}"
       #echo "Number of backups: ${!bckups[@]}"  # Print the number of backups
	if [ "${#bckups[@]}" -gt 5 ]; then
		echo "-------------"
		backupsto_rem=("${bckups[@]:5}")
		#backupsto_rem=("${backups[@]:5}")
		for backus in "${backupsto_rem[@]}";
		do 
			rm "$backus"
		done

	fi
	

} 

create_bckup
perform_rotation
