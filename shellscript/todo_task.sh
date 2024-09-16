#!/bin/bash
# Author: Sayyam Yadav
# # Date: 15/09/2024
#
# # File to store the tasks
TODO_FILE="todo.txt"
#
# # Ensure the todo.txt file exists
touch "$TODO_FILE"
#
# # Function to display the menu
 show_menu() {
     echo "==== Simple To-Do List ===="
         echo "1. View Tasks"
             echo "2. Add Task"
                 echo "3. Remove Task"
                     echo "4. Exit"
                     }
# Function to display tasks
                     view_tasks() {
                         echo "==== Your To-Do List ===="
                             if [ ! -s "$TODO_FILE" ]; then
                                     echo "Your to-do list is empty."
                                         else
                                                 nl -s ". " "$TODO_FILE" # Number each line
                                                     fi
                          echo "=========================="
		  }
#function to add the task
add_task(){
echo "Enter the task you want to enter"
read -r task
echo "$task" >> "$TODO_FILE"
echo "task added succesfully!"
}
		   
# fuction to remove the task
task_remove(){
	view_tasks
	echo "Enter the task no you want to remove:"
	read -r task_num
        if sed -i "${task_num}d" "$TODO_FILE"; then
		echo "Task removed succesfully"
	else
		echo "Failed to remove task"
	fi
}

# main menu loop 
#
while true; do
	show_menu
	echo "Choose option from (1-4) :\n "
	read -r option

	case $option in
		1) view_tasks
			;;
		2) add_task
			;;
		3) task_remove
			;;
		4) echo "Goodbye!! :)"
			exit 0
			;;
		5) echo "Invalid option please try again :("
			;;

		esac
	done

