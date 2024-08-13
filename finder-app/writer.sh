#check if the correct number of arguments are provided
if [ "$#" -ne 2 ]; then
	    echo "Error: Two arguments required - a file path and a write string"
	        exit 1
fi

writefile=$1
writestr=$2

# Create the directory path if it does not exist
mkdir -p "$(dirname "$writefile")"

# Attempt to write to the file
echo "$writestr" > "$writefile"

# Check if the file was successfully created and written
if [ $? -ne 0 ]; then
	    echo "Error: File '$writefile' could not be created"
	        exit 1
fi

echo "File '$writefile' successfully written with content: $writestr"

exit 0

