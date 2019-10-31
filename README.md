# raspberry_router

Hi! This is a personal project who installs a dhcp server, pushbullet system monitor, web panel, vpn client and ad-blocker to share internet from a 4g usb dongle to wifi using a raspberry pi

# How to access:
via ip or via hostname: raspberrypi.local

#Preparation:

apt-get update ; apt-get upgrade -y ; reboot
raspi-config, Boot in console, Upgrade system, reboot

#Install:

sudo -s ; cd /root ; git clone https://github.com/albaedu/raspberry_router.git ; sh /root/raspberry_router/install.sh
