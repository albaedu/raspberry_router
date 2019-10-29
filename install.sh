apt-get update ; apt-get upgrade -y

apt-get install wget curl nano udhcpd dnsmasq -y

echo "nameserver 8.8.8.8" > /etc/resolv.conf
echo "nameserver 8.8.4.4" >> /etc/resolv.conf

mkdir /scripts

# Config dnsmasq

# Config bind

rm -rf /etc/bind/named.conf.options
cp /root/raspberry_router/named.conf.options /etc/bind/named.conf.options
rm -rf /etc/bind/named.conf.local
cp /root/raspberry_router/named.conf.local /etc/bind/named.conf.local
cp /root/raspberry_router/blacklisted.zones /etc/bind/blacklisted.zones
mkdir -p /etc/bind/zones/master/
cp /root/raspberry_router/blockeddomains.db /etc/bind/zones/master/blockeddomains.db


# Config dhcp

#rm -rf /etc/udhcpd.conf
#cp /root/raspberry_router/udhcpd.conf /etc/udhcpd.conf
#rm -rf /etc/default/udhcpd
#cp /root/raspberry_router/udhcpd /etc/default/udhcpd

# Envio sms mejor que pushbullet, borrar cuenta pushbullet


#curl --request POST \
#--url https://api.pushbullet.com/v2/pushes \
#--header 'Access-Token: AQUI' \
#--header 'Cache-Control: no-cache' \
#--header 'Content-Type: application/json' \
#--data '{"body":"Your message", "title":"Hello World!", "type":"note"}'

rm -rf /root/raspberry_router
reboot
