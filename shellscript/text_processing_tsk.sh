#!/bin/bash
# Author: Sayyam Yadav
# # Date: 15/09/2024
#
# # Check if the user provided a file as an argument

echo "Enter the path of the file yo want to process  :"
        read pathFile
            
  
#
 # Check if the file exists
if [ ! -f "$pathFile" ]; then
 echo "Error: File '$pathFile' not found."
exit 1
fi
#
 # File to process
                    FILE="$pathFile"
## Count the number of lines in the file
                     line_count=$(wc -l < "$FILE")

                     # Count the number of words in the file
                    word_count=$(wc -w < "$FILE")
#
#                     # Count the number of characters in the file
                     char_count=$(wc -m < "$FILE")
#
#                     # Find the longest word in the file
                     longest_word=$(tr -s '[:space:]' '\n' < "$FILE" | awk '{ if (length > max_length)
		     { max_length = length; longest = $0 } } END { print longest }')
#
#                     # Display the results
                     echo "File: $FILE"
                     echo "Number of lines: $line_count"
                     echo "Number of words: $word_count"
                     echo "Number of characters: $char_count"
                     echo "Longest word: $longest_word"
#
