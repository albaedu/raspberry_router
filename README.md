# raspberry_router

Hi! This is a personal project who installs a dhcp server, pushbullet system monitor, web panel, vpn client and ad-blocker to share internet from a 4g usb dongle to wifi using a raspberry pi

# Pending:

- Push notifications (starts, no internet 4g, no internet VPN)

- Ads lists to block

- Web interface

- Battery meter

# How to access:
via ip or via hostname: raspberrypi.local
default raspberry login: pi / raspberry

# Requeriments:

1 - Have a VPN server and create the client.ovpn config file

2 - Install nginx/apache server (not in the vpn server) and set a default page for blocked site 

3 - Change the Ad Splash Server ip used to show blocked ad in bind zone

4 - The 4G router must can connect by itself, without asking pin code

#Preparation:

apt-get update ; apt-get upgrade -y ; reboot
raspi-config, Boot in console, Upgrade system, reboot

#Install:

sudo -s ; cd /root ; git clone https://github.com/albaedu/raspberry_router.git ; sh /root/raspberry_router/install.sh

# IP Configuration:

WAN: IP: 192.168.8.2
WAN Router: 192.168.8.1
WAN DNS: 8.8.8.8

WIFI IP: 10.0.0.1
