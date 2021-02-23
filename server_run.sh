cd server
npm cache clean --force
rm -rf node_modules
rm -rf package-lock.json
npm install
npm start