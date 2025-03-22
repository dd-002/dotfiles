url=$(playerctl metadata --format '{{mpris:artUrl}}')
title=$(playerctl metadata --format '{{xesam:title}}')
artist=$(playerctl metadata --format '{{xesam:artist}}')
length=$(playerctl metadata --format '{{mpris:length}}')
position=$(playerctl position)
json='{"url":"'$url'","title":"'$title'","artist":"'$artist'","length":"'$length'","position":"'$position'"}'

echo $json
