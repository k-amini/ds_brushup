
# Clone creates a new clean copy of a remote repository
git clone https://path.to/remote/repository

# Fetch gets any new commits to the remote repository
git fetch

# Merge adds any changes fetched from a remote repository
# to a local repository
git merge

# Pull performs a fetch and a merge
git pull

# Show what files have been changed
git status

# Add adds any files that you want to commit
git add /path/to/file
# Adding a * adds everything in the current folder
git add *

# Commit commits any added changes to the local repository
git commit
# This triggers a text editor so you can write a summary
# of the commit
git commit -m "my message"
# If you pass it -m you can skip the text editor

# Push updates a remote repository that you have write
# access to with your commits
git push

# Show who edited a given line of a file
git blame
