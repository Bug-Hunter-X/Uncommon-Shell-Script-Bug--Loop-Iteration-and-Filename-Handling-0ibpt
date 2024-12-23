#!/bin/bash

# Improved script that handles files with spaces and special characters
# Uses an array for better file handling and error checking.

files=("file1.txt" "file2.txt" "file 3.txt" "file4.txt")

for i in "${!files[@]}"; do
  filename=${files[i]}
  echo "Processing: $filename"
  if [[ -f "$filename" ]]; then 
    echo "File exists: $filename"
     # ... your file processing logic here ...
  else
    echo "Error: File '$filename' not found"
  fi
done

# Added input validation and error handling to improve the script's reliability.