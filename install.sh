apt-get update ; apt-get upgrade -y

apt-get install ssmtp wget curl nano -y

mkdir /scripts

curl --header 'Access-Token: o.vqrkqcT7Wbue51sm9zsLmj85Z73UCfNA' \
     --header 'Content-Type: application/json' \
     --data-binary '{"body":"Space Elevator, Mars Hyperloop, Space Model S (Model Space?)","title":"Space Travel Ideas","type":"note"}' \
     --request POST \
     https://api.pushbullet.com/v2/pushes
    
    
curl --request POST \
--url https://api.pushbullet.com/v2/pushes \
--header 'Access-Token: AQUI' \
--header 'Cache-Control: no-cache' \
--header 'Content-Type: application/json' \
--data '{"body":"Your message", "title":"Hello World!", "type":"note"}'
