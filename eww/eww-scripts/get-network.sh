wifi_status=$(nmcli c | grep -E 'wlo1' | wc -l)
eth_status=$(nmcli c | grep -E 'eno1' | wc -l)

if [[ "$wifi_status" == "1" ]]; then
	wifi_name="$(nmcli c |grep -E 'wlo1' | awk '{print $1}')" 
	echo "  $wifi_name"
else
if [[ "$eth_status" == "1" ]]; then
	echo "󰈀 eno1"
else
	echo "󰲛 "
fi
fi
