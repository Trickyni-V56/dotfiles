#!/usr/bin/env bash

# Function to print a single color block with 'X'
print_color_block() {
    printf "\e[38;5;%sm\e[48;5;%smX\e[0m" "$1" "$2"
}

# Generate the grid (Foreground vs. Background)
for fg in {0..15}; do
    for bg in {0..15}; do
        print_color_block "$fg" "$bg"
    done
    echo  # Newline after each foreground row
done
