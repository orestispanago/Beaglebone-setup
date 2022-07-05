
# Beaglebone-setup

Automated Beaglebone setup script.

### Features

* Sets static IP address
* Expands SD card filesystem

Tested on Beaglebone Black Rev C

### Instructions 

Download console image and burn it to SD card.

https://debian.beagleboard.org/images/bone-debian-10.3-console-armhf-2020-04-06-1gb.img.xz

Connect to device with USB.
* Windows: (Putty) connect over SSH at ```debian@192.168.7.2``` or over serial using the appropriate COM port. The COM port can be found from the Device Manager.

* Linux: ```ssh debian@192.168.7.2```

Change default password using ```passwd``` command.

Edit ```setup.sh``` script to add your network details.

Copy the script to the Beaglebone and run using ```sudo```. Your beaglebone will reboot.

Then update the OS

```sudo apt-get update && sudo apt-get upgrade -y```

Install the packages you need e.g:

```
sudo apt-get install git python3 python3-pip -y
```