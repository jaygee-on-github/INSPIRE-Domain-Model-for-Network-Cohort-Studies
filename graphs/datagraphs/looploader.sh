#!/bin/bash

# Specify the wildcard pattern to match the files
file_pattern="*.json"

# Iterate over files matching the pattern
for file in $file_pattern; do
    # Check if the file exists
    if [ -e "$file" ]; then
        # Use wc command to count lines, words, and characters
        echo "Procesing file: $file"
        jsonld format -q $file | rapper -c -i nquads -I https://example.org/id/ -
        jsonld format -q $file |  curl -i -X POST  -H 'Content-Type:text/x-nquads'  --data-binary @-  http://localhost:7878/store
        echo "---------------------"
    else
        echo "File not found: $file"
    fi
done

