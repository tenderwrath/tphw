#!/bin/bash

read input_dir output_dir

find "$input_dir" -type f -a | while read file; do
    filename=$(basename "$file")
    if [ -f "$output_dir/$filename" ]; then
        ext="${filename##*.}"
        filename="${filename%.*}"
        new_filename="$filename-$(date +%s).$ext"
        cp "$file" "$output_dir/$new_filename"
    else
        cp "$file" "$output_dir/$filename"
    fi
done

