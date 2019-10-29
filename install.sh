apt-get update ; apt-get upgrade -y

apt-get install wget curl nano udhcpd bind9 bind9utils bind9-doc -y

mkdir /scripts

# Config bind

rm -rf /etc/bind/named.conf.options
cp /root/raspberry_router/named.conf.options /etc/bind/named.conf.options

# Config dhcp

rm -rf /etc/udhcpd.conf
cp /root/raspberry_router/udhcpd.conf /etc/udhcpd.conf
rm -rf /etc/default/udhcpd
cp /root/raspberry_router/udhcpd /etc/default/udhcpd

# Envio sms mejor que pushbullet, borrar cuenta pushbullet

    
curl --request POST \
--url https://api.pushbullet.com/v2/pushes \
--header 'Access-Token: AQUI' \
--header 'Cache-Control: no-cache' \
--header 'Content-Type: application/json' \
--data '{"body":"Your message", "title":"Hello World!", "type":"note"}'
