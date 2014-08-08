RaspCam
=======


RaspCam is a bash script for the Raspberry Pi, you can also use this on other Debian-based linux distro's. Raspcam works with a USB Webcamera.

What you need:
* A raspberry pi with raspbian OS and internet connection

How to install:
First we need to make a webserver from our Pi, we do this by installing Apache2.

sudo apt-get install apache2 php5 libapache2-mod-php5
sudo service apache2 restart

We also need the program 'fswebcam', you can install it using

sudo apt-get install fswebcam

Then we need to install Git

sudo apt-get install git-core

Now we can download the script from GitHub, and give ourself permission to run it.

git clone git://raw.githubusercontent.com/Legosteen11/RaspCam/gh-pages/raspcam.sh
chmod +x raspcam.sh

Now make sure that you have a Webcam in the usb slot ON your raspberry pi, NOT on a powered usb hub. You can start raspcam using:

./raspcam.sh

To stop the script use Ctrl+C, the script will take a picture every minute.
You can view your pictures at IP/camera.jpg
Or by typing IP/year-month-day-hourminute.jpg
For example: 192.168.0.110/camera.jpg
192.168.0.110/2014-08-08-1244

Configuring:
To configure raspcam type:

sudo nano raspcam.sh

The only real thing you can configure is how much time there is between a picture uploaded on the internet, the number after 'Webcamscript'. The default is 5 seconds.


Thank you for reading :)
