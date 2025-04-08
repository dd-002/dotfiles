date="Screenshot"+$(date +%F)+".png"
grim -g "$(slurp)" -o $date
echo $date
