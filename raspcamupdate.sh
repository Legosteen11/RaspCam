#!/bin/bash
echo "Removing old raspcam"
sudo rm /usr/bin/raspcamupdate
sudo rm /usr/bin/raspcam
sudo rm raspcam.sh
wget https://raw.githubusercontent.com/Legosteen11/RaspCam/gh-pages/raspcam.sh
sudo chmod +x raspcam.sh
mv raspcam.sh /usr/bin/raspcam
mv raspcaminstaller.sh /usr/bin/raspcamupdate
echo "Done installing. You can start RaspCam by typing 'sudo raspcam' And update by typing 'sudo raspcamupdate'"
