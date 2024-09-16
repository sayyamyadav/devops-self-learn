#!/bin/bash
# Author: Sayyam Yadav
# # Date: 15/09/2024
#
# # File that contains the list of packages to install
PACKAGE_LIST="packages.txt"
#
# # Log file to store installation status
LOG_FILE="installation_log.txt"
#
# # Ensure the packages.txt file exists
if [ ! -f "$PACKAGE_LIST" ]; then
 echo "Error: $PACKAGE_LIST not found!"
 exit 1
 fi
#
#         # Clear or create the log file
 > "$LOG_FILE"
#
#         # Detect the package manager (apt, yum, dnf)
detect_package_manager() {
if command -v apt &> /dev/null; then
echo "apt"
 elif command -v yum &> /dev/null; then
echo "yum"
elif command -v dnf &> /dev/null; then
echo "dnf"
else
echo "Error: No supported package manager found!"
exit 1
fi
}
#
# # Get the package manager
PACKAGE_MANAGER=$(detect_package_manager)
echo "Using package manager: $PACKAGE_MANAGER"
#
#      # Function to install packages
install_package() {
  local package=$1
  echo "Installing $package..."
#                                                                                 
if sudo $PACKAGE_MANAGER install -y "$package" &>> "$LOG_FILE"; then
 echo "$package installed successfully." | tee -a "$LOG_FILE"
 else
	 echo "Error installing $package." | tee -a "$LOG_FILE"
   fi
     }
#
#     # Read the packages.txt file and install each package
while IFS= read -r package; do
 if [[ -n "$package" ]]; then
     install_package "$package"
    else
   echo "Skipping empty line."
 fi   
 done < "$PACKAGE_LIST"
 
																	 
		echo "Installation process completed. Check $LOG_FILE for details."

