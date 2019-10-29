apt-get update ; apt-get upgrade -y

apt-get install wget curl nano isc-dhcp-server bind9 bind9utils bind9-doc -y

mkdir /scripts

# Envio sms mejor que pushbullet, borrar cuenta pushbullet

    
curl --request POST \
--url https://api.pushbullet.com/v2/pushes \
--header 'Access-Token: AQUI' \
--header 'Cache-Control: no-cache' \
--header 'Content-Type: application/json' \
--data '{"body":"Your message", "title":"Hello World!", "type":"note"}'
