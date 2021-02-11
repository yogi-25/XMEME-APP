 echo "Installing NODE"
 curl -sL https://deb.nodesource.com/setup_10.x -o nodesource_setup.sh
 chmod +x nodesource_setup.sh
 sudo ./nodesource_setup.sh
 sudo apt install nodejs -y
 sudo apt install npm -y
 sudo apt install build-essential -y
 
 # ----------------MONGODB---------------
 echo "Installing MONGODB"
 curl -fsSL https://www.mongodb.org/static/pgp/server-4.4.asc | sudo apt-key add -
 echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu bionic/mongodb-org/4.4 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.4.list
 sudo apt update
 sudo apt install mongodb-org -y
 sudo systemctl start mongod.service
 sudo systemctl enable mongod