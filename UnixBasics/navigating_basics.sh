# This is a list of most of the navigation commands
# we have seen so far

# pwd : Prints the Working Directory
# Show where you are in the file tree
pwd

# cd : changes directory
cd
# With no argument it navigates to the home directory
# Users keep their files in their home directory
# which is indicated by the environment variable $HOME
cd ~
# ~ is an alias for $HOME
cd /
# / is the root of the file tree.
cd ..
# .. is the point at the tree above the current folder
# It is possible to use both relative paths,
# relative to the current directory, indicated by the
# $PWD variable, or an absolute path from the root
# directory

# ls : Lists the files at this point of the tree
ls
# With no arguments, it lists the non-hidden files and folders
ls -a
# With the -a flag, it lists all files
ls -l
# With the -l flag, it lists the files and their main parameters

# touch : creates a file
touch test.txt

# mkdir : Creates a new directory
mkdir /path/to/myNewFolder
# If you want to create intermediate folders, use -p
mkdir -p /path/to/myNewFolder

# mv : Moves files from to
mv /path/to/currentLocation /path/to/newLocation
# Move is also used to rename files
mv currentName newName
# Move is recursive by default

# cp : Copies files from to
cp currentLocation newFile
# Add a -r to recursively copy a folders
cp -r currentFolder newFolder

# rm : Removes a file
rm /path/to/file
# Add a -r to recursively delete folders
rm -r /path/to/folder
# Add -f (force) to remove without confirming
rm -f /path/to/readOnly/files
# Combine recursive and force
rm -rf

# rmdir : Remove directory
rmdir /path/to/empty/directory
# By default rm will not remove a directory
# And by default, rmdir will only remove an empty
# directory, including hidden files and folders

# chmod : Change mode
chmod +x /path/to/file
# Chmod changes the mode of a file. If you run an


# chown : Change owner

# chgrp : Change group
