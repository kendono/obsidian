#!/bin/bash

# Check if all files exist
if [[ ! -f "base.md" || ! -f "src.md" ]]; then
    echo "One or more files do not exist."
    exit 1
fi

# Iterate through each line in base.md
while IFS= read -r base_line; do
    # Check if any line in src.md contains the base_line character
    while IFS= read -r src_line; do
        if [[ "$src_line" == *"$base_line"* ]]; then
            echo "$src_line" >> dst.md
            break  # Skip to next iteration of base.md loop
        fi
    done < src.md
done < base.md

echo "Matching lines appended to dst.md."
