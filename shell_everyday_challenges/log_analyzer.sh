#!/bin/bash
#Date:17/10/2024
#
#
#
#Input: The script should take the path to the log file as a command-line argument.
#
#
pathForLog=$1
keyword_name=$2

 # Get the date of analysis
 date_of_analysis=$(date "+%Y-%m-%d %H:%M:%S")
 #
if [ -f $pathForLog ]; then
	#Total lines processed
        total_lines_processed=$(wc -l < $pathForLog)

       echo "Total number of errors/failed count is - $(awk "/$keyword_name/" "$pathForLog" | wc -l)"
       #Total error count
       error_count=$(awk "/$keyword_name/" "$pathForLog" | wc -l)

       echo "CRTICAL/WARNING ---events"
       read critcal
      critcal_error=$(awk "/$critcal/ {print NR, \$0 }" "$pathForLog")
      echo "$critcal_error"
       echo "top most common error in the log file are----------------"
      # Top 5 error messages with their occurrence count
       top_error=$(awk "/$keyword_name/" "$pathForLog" | \
		    awk '{msg[$0]++} END {for (m in msg) print msg[m], m}' | \
		    sort -rn | head -n 5)
       awk "/$keyword_name/" "$pathForLog" | \
	                           awk '{msg[$0]++} END {for (m in msg) print msg[m], m}' | \
				                       sort -rn | head -n 5
       #--------------------------------creating report file for issue analysis------------------------"
       report_file="summary_report.txt"

        # Write the summary report to the file
	{
		echo "Date of Analysis: $date_of_analysis"
		echo  "LogFileName: $pathForLog"
		echo "Total lines processed : $total_lines_processed"
		echo "Total error count : $error_count"
		echo -e "Top 5 error messages with their occurrence count:\n$top_error"
		echo -e "List of critical events with line numbers:\n$critcal_error"
	} > "$report_file"
	echo "Summary report generated successfully $report_file location of the file is $(pwd)"
	
       if [ ! "$#" -ne 0 ]; then
	       echo "something went wrong please check manually"
       fi	       
else
	echo "No such file is present please mention correct path"
fi
