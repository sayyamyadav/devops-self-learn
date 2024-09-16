#Author: Sayyam Yadav
# Date: 15/09/2024
# #
# # creates users, generates random passwords,
# # and saves the username and password to a file called credentials.txt.
#
# Path to the file that contains the list of usernames
 user_list="user_list.txt"
#
# # Path to the credentials file where we will save the usernames and passwords
credentials_file="credentials.txt"
#
# # Check if user_list.txt exists
 if [ ! -f "$user_list" ]; then
     echo "Error: $user_list not found!"
     exit 1
 fi
  # Clear or create the credentials file
 > "$credentials_file"
#   Function to generate random passwords
 generate_password() {
echo "$(openssl rand -base64 12)" # Generate a 12-character random password
 }
#
# Read the user_list.txt and create users
while IFS= read -r username; do
       	if id "$username" &>/dev/null; then
	      	echo "User $username already exists,..."
	else
	       	# Create the user
 sudo useradd -m "$username"
# Generate a random password for the user
 password=$(generate_password)
#   # Set the user's password
 echo "$username:$password" | sudo chpasswd
#                                                                                                     
# # Save the username and password to the credentials.txt file
echo "Username: $username, Password: $password" >> "$credentials_file"
echo "User $username created with password"
	fi
done < "$user_list"
echo "All users processed .Credential Saved in $credentials_file"
cat $credentials_file
