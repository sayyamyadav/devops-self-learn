#!/bin/bash
#Date:15/10/2024
#
#The script should accept a command-line argument to specify the target process to monitor. For example: 
#../monitor_proce#ss.sh <argument>
#
#
#
process=$1

#Maximum number of restart
#
max_restart=3
#
restart_attempts=0

## Function to check if a process is running
function process_check {
pgrep -x "$1" > /dev/null
return $? 
}
 
# Function to restart the process
 restart_process() {
	 echo "Attempt to restart process....$1"
	 sudo systemctl start "$process"
	 if [ $? -eq 0 ]; then
		 echo "your process $1 restart successfully"
	 else
		 echo "Fail to restart the process"
		 sudo systemctl status "$1"  # Show detailed status
	 fi
}
while true; do
	if process_check "$process"; then
		echo "$process is running currently"
	else 
		echo "$process is not running.."
		echo "attempt-------------$restart_attempts"
		restart_attempts=$((restart_attempts + 1))
		if [ "$restart_attempts" -le "$max_restart" ]; then
		      restart_process "$process" > /dev/null
	        else 
		      echo "Max restart attempts reached for $process please check it manually"
		      echo "Notification: Manual intervention required for $process." | mail -s "$process Alert" >> error.txt yadavsayyam781@gmail.com
		     exit 1
		fi 
		
	fi
	# Wait for a specified interval before checking again
	     sleep 10
done
