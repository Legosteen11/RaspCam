#!/bin/bash
echo "Removing old raspcam"
sudo rm /usr/bin/raspcamupdate
sudo rm /usr/bin/raspcam
sudo rm raspcam.sh
echo "Installing webserver"
sudo apt-get install apache2 php5 libapache2-mod-php5
sudo service apache2 restart
echo "Done! Installing fswebcam"
sudo apt-get install fswebcam
wget https://raw.githubusercontent.com/Legosteen11/RaspCam/gh-pages/raspcam.sh
sudo chmod +x raspcam.sh
mv raspcam.sh /usr/bin/raspcam
mv raspcaminstaller.sh /usr/bin/raspcamupdate
sudo chown -R $USER /var/www
echo "Done installing. You can start RaspCam by typing 'raspcam' And update by type 'raspcamupdate'"
