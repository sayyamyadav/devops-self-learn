#!/bin/bash
#Authore:Sayyam Yadav
#Date:15
#
#
#checking cpu and memory usage of system
#
log_file="system_health.log" # log filename
#1  check cpu usage

echo "cpu usage check:"
cpu_usage=$(top -bn1 | grep "Cpu(s)" | awk '{print $2 + $4}')
cpu_limit=80.0 # threshold for cpu

#2 check memory usage
#
echo "memory usage check"
ava_memory=$(free -m | awk 'NR==2{print $7}')
echo "your current avaliable memeory is $ava_memory"

#Report if the cpu usage is above 80% or if the available memory below 20 %
if (( $(echo "$cpu_usage > $cpu_limit" | bc -l) )); then
	echo "Warning cpu usage is above 80% current cpu usage is :$cpu_usage%"
	echo "Warning cpu usage is above 80%! current cpu usage is :$cpu_usage%" | tee -a "$log_file"
else 
	echo "your current cpu usage is $cpu_usage%"
	echo "your current cpu usage is $cpu_usage%" >> "$log_file"
fi


#  Logs the results to a file named system_health.log.
#
echo "System Health check completed........$(date )." >> "$log_file"
echo ".............................."  >> "$log_file"
echo "print the data of log file----------------------"
cat $log_file


