#!/bin/bash

input_dir="/home/raluca/input"
output_dir="/home/raluca/output"

mkdir -p "$output_dir" 


for cnf_file in "$input_dir"/*.sanitized.cnf; do
    base_name=$(basename "$cnf_file" .sanitized.cnf)    
    output_file="$output_dir/${base_name}.output"
    #run minisat
    minisat "$cnf_file" "$output_file"
    

    echo "Processed $cnf_file -> $output_file"
done

echo "All CNF files processed."
