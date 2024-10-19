cript to monitor and restart a specified process if it stops running.

# Max number of restart attempts before notification
 MAX_RESTART_ATTEMPTS=5
RESTART_COiUNT=0
#
# # Function to check if the process is running
 check_process() {
     pgrep -x "$1" > /dev/null 2>&1
     }

     # Function to restart the process
     restart_process() {
         echo "Attempting to restart $1..."
             # Replace with the actual command to start your process
                # For example, if your process is a service:
                     # sudo systemctl start your_process.service
                         $1 & # Start the process in the background
                             sleep 2 # Give it a moment to start
                             }

                             # Function to send a notification
                             send_notification() {
                                 local process_name="$1"
                                     local admin_email="yadavsayyam781@gmail.com" # Change to your admin email
                                         local subject="$process_name Alert"
                                             local body="$process_name has failed to start after $MAX_RESTART_ATTEMPTS attempts. Manual intervention is required."

                                                 echo "$body" | mail -s "$subject" "$admin_email"
                                                 }
#
                                                 # Main logic
                                                 if [ -z "$1" ]; then
                                                     echo "Usage: $0 <process_name>"
                                                         exit 1
                                                         fi

                                                         PROCESS_NAME=$1

                                                         while true; do
                                                             if check_process "$PROCESS_NAME"; then
                                                                     echo "$PROCESS_NAME is running."
                                                                             RESTART_COUNT=0 # Reset counter if process is running
                                                                                 else
                                                                                         echo "$PROCESS_NAME is not running."
                                                                                                 restart_process "$PROCESS_NAME"
                                                                                                         RESTART_COUNT=$((RESTART_COUNT + 1))
                                                                                                                 
                                                                                                                         if [ "$RESTART_COUNT" -ge "$MAX_RESTART_ATTEMPTS" ]; then
                                                                                                                                     send_notification "$PROCESS_NAME"
                                                                                                                                                 break # Exit the loop after notification
                                                                                                                                                         fi
                                                                                                                                                             fi
                                                                                                                                                                 sleep 5 # Check every 5 seconds
                                                                                                                                                                 done

