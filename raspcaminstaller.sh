#!/bin/bash
echo "Removing old raspcam"
sudo rm raspcamupdate.sh
sudo rm /usr/bin/raspcamupdate
sudo rm /usr/bin/raspcam
sudo rm raspcam.sh
echo "Installing webserver"
sudo apt-get install apache2 php5 libapache2-mod-php5
sudo service apache2 restart
echo "Done! Installing fswebcam"
sudo apt-get install fswebcam
echo "Done! Downloading RaspCam"
wget https://raw.githubusercontent.com/Legosteen11/RaspCam/gh-pages/raspcam.sh
wget https://raw.githubusercontent.com/Legosteen11/RaspCam/gh-pages/raspcamupdate.sh
sudo chmod +x raspcamupdate.sh
sudo chmod +x raspcam.sh
sudo mv raspcamupdate.sh /usr/bin/raspcamupdate
sudo mv raspcam.sh /usr/bin/raspcam
sudo mv raspcamupdate.sh /usr/bin/raspcamupdate
sudo chown -R $USER /var/www
echo "Done installing. You can start RaspCam by typing 'raspcam' And update by typing 'raspcamupdate'(Must be run as root)"
