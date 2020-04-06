sudo apt update
sudo apt install -y openjdk-8-jre-headless

wget https://launcher.mojang.com/v1/objects/bb2b6b1aefcd70dfd1892149ac3a215f6c636b07/server.jar

java -Xmx1024M -Xms1024M -jar server.jar nogui

nano eula.txt

nano server.properties

mkdir /opt/minecraft/
rsync -R /home/ubuntu/ /opt/minecraft/

sudo nano /etc/systemd/system/minecraft.service


sudo systemctl daemon-reload
sudo systemctl enable minecraft.service
sudo systemctl start minecraft
sudo systemctl status minecraft


sudo journalctl -f -n 100 -u minecraft

sudo chmod u+x /home/ubuntu/start-service.sh

python3 register-route.py

curl http://169.254.169.254/latest/meta-data/public-hostname

export hostname=$(curl http://169.254.169.254/latest/meta-data/public-hostname)

sudo apt install python3-pip

pip3 install boto3

