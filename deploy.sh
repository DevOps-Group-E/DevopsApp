#!/usr/bin/env bash
sudo apt update && sudo apt install nodejs npm
# Install Truffle
sudo npm install -g pm2

pm2 stop DevopsApp
# Change directory to the folder where the application is downloaded
cd DevopsApp/
# Install application dependencies
npm install
# Set private key and server certificate
echo $PRIVATE_KEY > privatekey.pem
echo $SERVER > server.crt
# Start the application named 'app' using pm2
pm2 start ./bin/www --name DevopsApp
