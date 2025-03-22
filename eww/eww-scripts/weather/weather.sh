#https://weather-sense.leftium.com/wmo-codes
#for icons

result=$(curl -X GET --header "Accept: */*" "https://api.open-meteo.com/v1/forecast?latitude=19.136041&longitude=72.907872&current=temperature_2m,wind_speed_10m,weather_code,relative_humidity_2m,rain,apparent_temperature,is_day,precipitation,cloud_cover")

apparent_temperature=$(echo "$result" | jq -r '.current.apparent_temperature')
relative_humidity=$(echo "$result" | jq -r '.current.relative_humidity_2m')
precipitation=$(echo "$result" | jq -r '.current.precipitation')
rain=$(echo "$result" | jq -r '.current.rain')
wind_speed=$(echo "$result" | jq -r '.current.wind_speed_10m')
cloud_cover=$(echo "$result" | jq -r '.current.cloud_cover')
weather_code=$(echo "$result" | jq -r '.current.weather_code')
is_day=$(echo "$result" | jq -r '.current.is_day')

json='{"temp":'$apparent_temperature',"rh":'$relative_humidity',"precp":'$precipitation',"wind_speed":'$wind_speed',"cloud":'$cloud_cover',"code":'$weather_code'}'

echo $json
