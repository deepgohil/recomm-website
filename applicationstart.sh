#!/bin/bash
sudo su
cd /home/ec2-user/recomm-website
echo "stpe1 code"
ansible-galaxy install nginxinc.nginx
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash
. /.nvm/nvm.sh
nvm install 16
pm2 stop next
pm2 start npm --name "next" -- run dev
sudo systemctl restart nginx
echo "done"
