#!/bin/bash
# Credits to taronyu for new installer!
# INSTALL THIS SCRIPT USING:
# wget https://raw.githubusercontent.com/Legosteen11/RaspCam/gh-pages/raspcam.sh && sudo chmod +x raspcam.sh && mv raspcam.sh /usr/bin/raspcam
#
# To update run:
# raspcam install

if [ $1 == "install" ]; then
	echo "Installing webserver"
	sudo apt-get install apache2 php5 libapache2-mod-php5
	sudo service apache2 restart
	echo "Done! Installing fswebcam"
	sudo apt-get install fswebcam
	echo "Removing old raspcam"
	sudo rm /usr/bin/raspcam
	sudo rm raspcam.sh
	wget https://raw.githubusercontent.com/Legosteen11/RaspCam/gh-pages/raspcam.sh
	sudo chmod +x raspcam.sh
	sudo mv raspcam.sh /usr/bin/raspcam
	echo "Done installing. You can start RaspCam by typing 'sudo raspcam' And update by typing 'sudo raspcam install'"
else
	if [ -a /usr/bin/raspcam ]; then
		i="0"

		while [ $i -lt 4 ]; do

		sleep 5
		echo "Taking picture..."
		DATE=$(date +"%Y-%m-%d_%H:%M:%s")

		fswebcam save /var/www/$DATE.jpg
		fswebcam save /var/www/camera.jpg
		echo "Picture named to: "
		echo $DATE
		echo "Press Ctrl + C, to stop script."

		done
	else
		echo "Installing webserver"
		sudo apt-get install apache2 php5 libapache2-mod-php5
		sudo service apache2 restart
		echo "Done! Installing fswebcam"
		sudo apt-get install fswebcam
		echo "Removing old raspcam"
		sudo rm /usr/bin/raspcam
		sudo rm raspcam.sh
		wget https://raw.githubusercontent.com/Legosteen11/RaspCam/gh-pages/raspcam.sh
		sudo chmod +x raspcam.sh
		sudo mv raspcam.sh /usr/bin/raspcam
		echo "Done installing. You can start RaspCam by typing 'raspcam' And update by typing 'sudo raspcam install'"
	fi
fi
