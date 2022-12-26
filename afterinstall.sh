cd /home/ec2-user/recomm-website
sudo su
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash
. /.nvm/nvm.sh
nvm install 16
npm -f install
npm -f install pm2@latest -g