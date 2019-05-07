sudo wget http://nginx.org/keys/nginx_signing.key
sudo apt-key add nginx_signing.key
cd /etc/apt
sudo nano sources.list
sudo apt-get update
sudo apt-get install nginx
sudo service nginx start
sudo apt-get update
sudo apt-get install software-properties-common
sudo add-apt-repository ppa:certbot/certbot
sudo apt-get update
sudo apt-get install python-certbot-nginx
sudo nano /etc/nginx/conf.d/default.conf
sudo certbot - nginx -d teamalphahacks.me -d www.teamalphahacks.me
sudo certbot -- nginx -d teamalphahacks.me -d www.teamalphahacks.me
sudo certbot nginx -d teamalphahacks.me -d www.teamalphahacks.me
sudo certbot
cd /etc/nginx/conf.d
sudo mv default.conf default.conf.bak
sudo touch server.conf
sudo nano server.conf
sudo nginx -s reload
mkdir /home/ubuntu/app
cd /home/ubuntu/app
git clone https://github.com/didrio/simple-node-express-server.git 
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.32.0/install.sh | bash
~/.nvm/nvm.sh
sudo ~/.nvm/nvm.sh
. ~/.nvm/nvm.sh
nvm install 8.4.0
npm install
node app.js
ls
cd simple-node-express-server
node app.js
cd ..
node app.js
ls
node app.js
cd simple-node-express-server
ls
node app.js
nvm install 8.4.0
npm install
node app.js
npm install forever -g
forever start app.js
