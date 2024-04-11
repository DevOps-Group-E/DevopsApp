#!/usr/bin/env bash
# Kill running Node.js instances
killall node
# Install Node.js and npm
sudo apt update && sudo apt install nodejs npm
# Install Truffle
sudo npm install -g truffle
# Change directory to the folder where the application is downloaded
cd DevopsApp/
# Install application dependencies
npm install
# Set private key and server certificate
echo $PRIVATE_KEY > privatekey.pem
echo $SERVER > server.crt
# Start the application named 'app' using pm2
pm2 start ./bin/www --name DevopsApp
