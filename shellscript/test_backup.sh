#!/bin/bash
#dATE:12/10/24
#
#

src_dir=$1
des_dir=$2
timestamp="$(date +'%Y-%m-%d-%h-%s')"
backup_dir="${des_dir}/${timestamp}_backup"

function create_dir {
	zip -r "${backup_dir}.zip" "${src_dir}"
	if [ $? -eq 0 ]; then
	       echo "backup successfully created"
       else
               echo "something went wrong"
	fi	       
}

function rotation_dir {
	back_uplist=$(ls -t "${des_dir}"/*_backup.zip )
	echo "----------------------${#back_uplist[@]}"
	 echo "----------------------$(echo "$back_uplist" | wc -l)"

	 if [ "$(echo "$back_uplist" | wc -l)" -gt 3 ]; then
		echo '--------------------'
		 backupsto_rem=($(echo "$back_uplist" | sed -n '4,$p'))  # Get files from the 4th onward
		echo "-------------------${backupsto_rem[@]}"
		for bck in "${backupsto_rem[@]}"; do
			            rm "$bck"
				            done
		
	fi

}
create_dir
rotation_dir
