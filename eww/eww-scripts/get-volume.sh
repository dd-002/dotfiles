current_volume=$(wpctl get-volume @DEFAULT_SINK@)
echo "$(echo "$current_volume" | sed 's/^[[:space:]]*//;s/[[:space:]]*$//;s/Volume://g' | xargs)"
