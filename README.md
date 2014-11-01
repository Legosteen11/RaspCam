RaspCam
=======
Thanks to Taronyu for making a new, better version of raspcam. http://goo.gl/XNHkFS
-------
Check out my website: <a href="http://wouterdoeland.nl">wouterdoeland.nl</a>

RaspCam is a bash script for the Raspberry Pi, you can also use this on other Debian-based linux distro's. Raspcam works with a USB Webcamera.

What you need:
* A raspberry pi with raspbian OS and internet connection

Automatic install
-------
Raspcam has an automatic installer, to use it type:

    wget https://raw.githubusercontent.com/Legosteen11/RaspCam/gh-pages/raspcaminstaller.sh
    sudo chmod +x raspcaminstaller.sh
    sudo ./raspcaminstaller.sh



Manual Install
-------
First we need to make a webserver from our Pi, we do this by installing Apache2.

    sudo apt-get install apache2 php5 libapache2-mod-php5
    sudo service apache2 restart

We also need the program 'fswebcam', you can install it using

    sudo apt-get install fswebcam

Now we can download the script from GitHub, and give ourself permission to run it.

    wget https://raw.githubusercontent.com/Legosteen11/RaspCam/gh-pages/raspcam.sh
    sudo chmod +x raspcam.sh
    sudo chown -R $USER /var/www

Now make sure that you have a Webcam in the usb slot ON your raspberry pi, NOT on a powered usb hub. You can start raspcam using:

    ./raspcam.sh

To stop the script use Ctrl+C, the script will take a picture every minute.
You can view your pictures at IP/camera.jpg
Or by typing IP/year-month-day-hour:minute:seconds.jpg
For example: 192.168.0.110/camera.jpg
192.168.0.110/2014-08-08-124412.jpg

Result
-------
When you've installed RaspCam and the other software, you'll see something like this:
![](https://snapr.pw/i/091d00c6d0.png "Command line")
![A screenshot of chrome with the page open](https://snapr.pw/i/af784d0885.png "In your browser")
![Just the image itself](https://snapr.pw/i/b56c26c9f0.png "The image")

Configuring:
-------
To configure raspcam type:

    sudo nano raspcam.sh

The only real thing you can configure is how much time there is between a picture uploaded on the internet, the number after 'Webcamscript'. The default is 5 seconds. 
If you are using ubuntu you will need to change the destination from /var/www/camera.jpg and /var/www/$DATE.jpg to /var/www/html/camera.jpg /var/www/html/$DATE.jpg

Thanks!
------
Thanks for reading :)

<a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-sa/4.0/88x31.png" /></a><br /><span xmlns:dct="http://purl.org/dc/terms/" href="http://purl.org/dc/dcmitype/InteractiveResource" property="dct:title" rel="dct:type">RaspCam</span> by <a xmlns:cc="http://creativecommons.org/ns#" href="https://github.com/Legosteen11/RaspCam" property="cc:attributionName" rel="cc:attributionURL">Wouter Doeland</a> is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/">Creative Commons Attribution-ShareAlike 4.0 International License</a>.<br />Based on a work at <a xmlns:dct="http://purl.org/dc/terms/" href="https://github.com/Legosteen11/RaspCam" rel="dct:source">https://github.com/Legosteen11/RaspCam</a>.
