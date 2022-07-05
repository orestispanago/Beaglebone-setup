# Beaglebone-setup

Automated Beaglebone setup script for IoT projects.

### Features

* Sets static IP address
* Installs git, python3 and pip
* Expands SD card filesystem

Tested on Beaglebone Black Rev C

### Instructions 

Download console image and burn it to SD card.

https://debian.beagleboard.org/images/bone-debian-10.3-console-armhf-2020-04-06-1gb.img.xz

Connect to device via USB (e.g Serial connection using Putty on Windows)

Login using default user ```debian``` and password ```temppwd```.

Change default password using ```passwd``` command.

Edit ```setup.sh``` script to add your network details.

Copy the script to the Beaglebone and run using ```sudo```.