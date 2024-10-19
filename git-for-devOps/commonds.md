# Git Commands

This document contains a list of Git commands along with brief descriptions.

```bash
git branch
# Lists all local branches in the repository.

git branch develop
# Creates a new branch named "develop".

git
# Displays the current status of Git; usually an incomplete command.

pwd
# Prints the current working directory.

mkdir git_tutorial
# Creates a new directory named "git_tutorial".

rm -r git_tutorial
# Removes the "git_tutorial" directory and its contents.

mkdir git-for-devops
# Creates a new directory named "git-for-devops".

cd git-for-devops
# Changes the current directory to "git-for-devops".

pwd
# Prints the current working directory.

git init
# Initializes a new Git repository.

ls -ltr
# Lists files in the current directory in long format, sorted by modification time.

ls -a
# Lists all files in the current directory, including hidden files.

touch hello_dosto.txt
# Creates a new empty file named "hello_dosto.txt".

ls
# Lists files in the current directory.

git status
# Displays the status of the working directory and staging area.

touch project_a.txt
# Creates a new empty file named "project_a.txt".

touch project_b.txt
# Creates a new empty file named "project_b.txt".

git status
# Displays the status again, showing new untracked files.

rm hello_dosto.txt
# Removes the file "hello_dosto.txt".

git add project_x.txt
# Stages "project_x.txt" for commit.

git add project_b.txt
# Stages "project_b.txt" for commit.

git add project_a.txt
# Stages "project_a.txt" for commit.

git status
# Displays the current status, showing staged files.

git rm --cached project_a.txt
# Unstages "project_a.txt" while keeping the file in the working directory.

git status
# Displays the status after unstage operation.

git add project_a.txt
# Stages "project_a.txt" again.

git commit -m "adding project_a project_b"
# Commits the staged changes with a message.

rm project_b.txt
# Removes the file "project_b.txt".

git status
# Displays the current status, showing changes.

git restore project_b.txt
# Restores "project_b.txt" from the last commit (if removed).

git status
# Displays the current status after restoring.

git restore project_b.txt
# Attempts to restore "project_b.txt" again.

ls
# Lists files in the current directory.

echo "testeee" >> project_b.txt
# Appends the text "testeee" to "project_b.txt".

git status
# Displays the status after the change.

git add project_b.txt
# Stages "project_b.txt" for commit.

git commit -m "change in project_b file"
# Commits the changes to "project_b.txt" with a message.

git status
# Displays the current status after committing.

git log
# Displays the commit history.

git checkout -b dev
# Creates and switches to a new branch named "dev".

ls
# Lists files in the current directory.

touch project_c.txt
# Creates a new empty file named "project_c.txt".

git add project_c.txt
# Stages "project_c.txt" for commit.

git commit -m "added project_c"
# Commits the changes to "project_c.txt" with a message.

git checkout master
# Switches to the "master" branch.

git checkout main
# Switches to the "main" branch.

ls
# Lists files in the current directory.

git branch
# Lists all local branches in the repository.

git log
# Displays the commit history.

git checkout dev
# Switches to the "dev" branch.

git log
# Displays the commit history again.

git log
# Displays the commit history again.

ls
# Lists files in the current directory.

git log
# Displays the commit history again.

q
# Quits the log view (typically used in pagers).

git log --oneline
# Displays a summary of commit history in a single line per commit.

git checkout main
# Switches back to the "main" branch.

git log --oneline
# Displays a summary of commit history in a single line per commit.

hustory
# Misspelled; should be "history" to view command history.

history
# Displays the command history in the terminal.
