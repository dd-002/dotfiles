#!/bin/bash

# Get the uptime in the format: "up 10 days, 3 hours, 20 minutes"
uptime_output=$(uptime -p)

# Extract hours and minutes from the output
hours=$(echo "$uptime_output" | grep -oP '\d+(?= hour)' | head -n 1)
minutes=$(echo "$uptime_output" | grep -oP '\d+(?= minute)' | head -n 1)

# If hours are not found, set to 0
if [ -z "$hours" ]; then
  hours=0
fi

# If minutes are not found, set to 0
if [ -z "$minutes" ]; then
  minutes=0
fi

# Output the result
echo "$hours h $minutes m"




