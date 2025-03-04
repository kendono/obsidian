#!/bin/bash

# File paths
src="src.md"
dst="dst.md"
res="res.md"

# Clear the result file before appending new content
> "$res"

# Iterate through each character in src.md
while IFS= read -r char; do
    # Iterate through each line in dst.md
    while IFS= read -r line; do
        # Check if the character is found in the line
        if [[ "$line" == *"$char"* ]]; then
            # Append the line to res.md
            echo "$line" >> "$res"
        fi
    done < "$dst"
done < "$src"
