#!/bin/sh

# Check if the correct number of arguments are provided
if [ "$#" -ne 2 ]; then
	    echo "Error: Two arguments required - a directory path and a search string"
	        exit 1
fi

filesdir=$1
searchstr=$2

# Check if filesdir is a valid directory
if [ ! -d "$filesdir" ]; then
	    echo "Error: Directory '$filesdir' does not exist"
	        exit 1
fi

# Find the number of files in the directory and its subdirectories
num_files=$(find "$filesdir" -type f | wc -l)

# Find the number of matching lines containing searchstr
num_matching_lines=$(grep -r "$searchstr" "$filesdir" | wc -l)

# Print the result
echo "The number of files are $num_files and the number of matching lines are $num_matching_lines"

exit 0

