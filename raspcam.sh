#!/bin/bash
i="0"

while [ $i -lt 4 ]
do

sleep 5
echo "Taking picture..."
DATE=$(date +"%Y-%m-%d_%H%M")

fswebcam /var/www/$DATE.jpg
fswebcam /var/www/camera.jpg
echo "Picture named to: "
echo $DATE

done
