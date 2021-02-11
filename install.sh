curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
sudo apt install nodejs
npm install express --save
npm install -g nodemon
npm install nodemon --save-dev
npm install mongodb --save

sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 9DA31620334BD75D9DCB49F368818C72E52529D4
echo "deb [ arch=amd64 ] https://repo.mongodb.org/apt/ubuntu bionic/mongodb-org/4.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb.list
sudo apt update
sudo apt install mongodb-org
sudo systemctl unmask mongod
sudo systemctl enable mongod
sudo service mongod status
sudo vim /etc/mongod.conf