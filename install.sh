# Basic software

apt-get install wget nano bc git curl openssl pwgen zip unzip -y

# SSH Config

rootpass=$(pwgen 16 1)

sudo sed -i "s/#PermitRootLogin.*/PermitRootLogin yes/g" /etc/ssh/sshd_config
sudo sed -i "s/PermitRootLogin.*/PermitRootLogin yes/g" /etc/ssh/sshd_config
sudo sed -i "s/#PasswordAuthentication.*/PasswordAuthentication yes/g" /etc/ssh/sshd_config
sudo sed -i "s/PasswordAuthentication.*/PasswordAuthentication yes/g" /etc/ssh/sshd_config
echo root:$rootpass | chpasswd
sudo service ssh restart
sudo service sshd restart
echo $rootpass

# Wifi Installation

wget http://www.fars-robotics.net/install-wifi -O /usr/bin/install-wifi
chmod +x /usr/bin/install-wifi
sudo install-wifi

rm -rf /root/raspberry_router
echo ""
echo "your root password is"
echo $rootpass
echo "you should restart"
