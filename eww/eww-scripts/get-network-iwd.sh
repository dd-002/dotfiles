wifi_status=$(iwctl station list | grep "connected" )
expected_string="wlan0 connected"

if [[ "$wifi_status" == *"disconnected"* ]]; then
	eth_status=$(ip link show | grep 'state UP' | grep 'eno1' | wc -l)
	if [[ "$eth_status" == *"1"* ]]; then
		echo "󰈀 eno1"
	else
		echo "󰲛 "
	fi

else
	wifi_name="$(iwctl station wlan0 show | grep "Connected network")"
	echo "    $(echo "$wifi_name" | sed 's/^[[:space:]]*//;s/[[:space:]]*$//;s/Connected network//g' | xargs)"
fi

