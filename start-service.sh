#!/bin/sh

export hostname=$(curl http://169.254.169.254/latest/meta-data/public-hostname)
python3 register-route.py


java -Xmx3G -Xms3G -jar server.jar nogui