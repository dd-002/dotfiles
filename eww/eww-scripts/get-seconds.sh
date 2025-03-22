#!/bin/bash

# Get the current second
current_second=$(date +%S)

# Multiply by 100 and divide by 60
result=$(( (current_second * 100) / 60 ))

# Output the result
echo  $result

