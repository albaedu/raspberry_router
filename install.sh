apt-get update ; apt-get upgrade -y

apt-get install wget curl nano udhcpd bind9 apache2 -y

echo "nameserver 8.8.8.8" > /etc/resolv.conf
echo "nameserver 8.8.4.4" >> /etc/resolv.conf

mkdir /scripts

# Config dnsmasq

# Config bind

rm -rf /etc/bind/named.conf.options
cp /root/raspberry_router/named.conf.options /etc/bind/named.conf.options
rm -rf /etc/bind/named.conf.local
cp /root/raspberry_router/named.conf.local /etc/bind/named.conf.local
mkdir -p /etc/bind/zones/master/
cp /root/raspberry_router/blockeddomains.db /etc/bind/zones/master/blockeddomains.db
wget -O - https://raw.githubusercontent.com/notracking/hosts-blocklists/master/domains.txt | sed -e '1,15d' | awk -F[/:] '{print $2}' | awk '{print "zone \""$1"\" in { type master; file \"/etc/bind/zones/blockeddomains.db\"; };"}' > /etc/bind/blacklisted.zones

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
echo ""
echo "you should restart"
