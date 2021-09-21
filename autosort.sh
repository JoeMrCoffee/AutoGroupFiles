#!/bin/bash

folder=""
filenum=0

#prompt for a folder - it must be an absolute path
echo "Enter the folder to help sort into multiple directories:"
read folder

#prompt for how many files to be moved to each new directory
echo "Enter the number of files to move per directory: "
read filenum

#ensure variable filenum is treated as an integer
filenum=$((filenum+0))

#this helps pull in the files in the directory/folder - Bash will not see the files with out the '*' which indicates all files
folderfiles=$folder"*"

count=1
dircount=1

#iterate through all the files
for filename in $folderfiles; do 

    #ensure that the item is a file (in case there are other subdirectories that you don't want sorted
	if [ -f $filename ]; then
        #when the count is 1 or returns to 1 (done later when we reach the file limit per folder/directory) make a new directory
		if [ $count -eq 1 ]; then
			dirname=$folder"dir"$dircount
			mkdir $dirname
			echo $dirname
		fi
		#if below the defined filenum or number of files per directory, move them to the new directory
		if [ $count -lt $filenum ]; then
			mv $filename $dirname
			count=$((count+1))
		#if the file limit is reached return the file count to zero and increase the directory count by 1	
		elif [ $count -eq $filenum ]; then
			mv $filename $dirname
			count=1
			dircount=$((dircount+1))
			
		fi
	fi
done
