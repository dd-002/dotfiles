#!/bin/bash

# Function to get memory value and remove non-numeric characters
get_mem_value() {
    value=$(grep "$1" /proc/meminfo | cut -d: -f2 | tr -d '[:space:]')
    echo "${value%%kB}"
}

# Get total RAM
total_ram=$(get_mem_value "MemTotal")

# Get free RAM
free_ram=$(get_mem_value "MemFree")

# Get cached RAM
cached_ram=$(get_mem_value "Cached")

# Calculate used RAM
used_ram=$((total_ram - free_ram - cached_ram))

# Print the results in MB
echo "Total RAM: $((total_ram / 1024)) MB"
echo "Used RAM: $((used_ram / 1024)) MB"
echo "Free RAM: $((free_ram / 1024)) MB"
echo "Cached RAM: $((cached_ram / 1024)) MB"

