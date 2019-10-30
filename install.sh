# Basic software

apt-get install wget nano bc git curl openssl pwgen zip unzip -y

# Router software

apt-get install isc-dhcp-server hostapd -y

# SSH Config

rootpass=$(pwgen 16 1)

sudo sed -i "s/#PermitRootLogin.*/PermitRootLogin yes/g" /etc/ssh/sshd_config
sudo sed -i "s/PermitRootLogin.*/PermitRootLogin yes/g" /etc/ssh/sshd_config
sudo sed -i "s/#PasswordAuthentication.*/PasswordAuthentication yes/g" /etc/ssh/sshd_config
sudo sed -i "s/PasswordAuthentication.*/PasswordAuthentication yes/g" /etc/ssh/sshd_config
echo root:$rootpass | chpasswd
echo pi:$rootpass | chpasswd
sudo service ssh restart
sudo service sshd restart
echo $rootpass

# Wifi Installation

wget http://www.fars-robotics.net/install-wifi -O /usr/bin/install-wifi
chmod +x /usr/bin/install-wifi
sudo install-wifi

# interfaces config network

rm -rf /etc/dhcpcd.conf
cp /root/raspberry_router/dhcpcd.conf /etc/dhcpcd.conf

# DHCP Server config
#rm -rf /etc/udhcpd.conf
#cp /root/raspberry_router/udhcpd.conf /etc/udhcpd.conf
#rm -rf /etc/default/udhcpd
#cp /root/raspberry_router/udhcpd /etc/default/udhcpd

# Hostpad config

#rm -rf /etc/hostapd/hostapd.conf
#cp /root/raspberry_router/hostapd.conf /etc/hostapd/hostapd.conf
#rm -rf /etc/default/hostapd
#cp /root/raspberry_router/hostapd /etc/default/hostapd
#systemctl unmask hostapd
#systemctl enable hostapd

# End

rm -rf /root/raspberry_router
echo ""
echo "your root password is"
echo $rootpass
echo "you should restart"
